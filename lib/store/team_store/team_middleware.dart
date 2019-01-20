import 'package:logisticsinspect/store/team_store/team_store.dart';

import './team_actions.dart';

import 'dart:convert';

import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveToPrefs(TeamState state) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = json.encode(state.toJson());
  await preferences.setString('teamState', string);
}

Future<TeamState> loadFromPrefs() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = preferences.getString('teamState');
  if (string != null) {
    Map map = json.decode(string);
    return TeamState.fromJson(map);
  }
  return TeamState.initialState();
}

void teamStateMiddleware(
    Store<TeamState> store, action, NextDispatcher next) async {
  next(action);

  if (action is AddTeamAction ||
      action is RemoveTeamAction ||
      action is SelectTeamAction ||
      action is UpdateTeamAction) {
    saveToPrefs(store.state);
  }

  if (action is GetTeamsAction) {
    await loadFromPrefs()
        .then((state) => store.dispatch(LoadedTeamsAction(state.teams)));
  }
}
