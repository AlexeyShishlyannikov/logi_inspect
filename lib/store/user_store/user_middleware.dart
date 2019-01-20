import 'package:logisticsinspect/store/user_store/user_store.dart';
import './user_actions.dart';

import 'dart:convert';

import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveToPrefs(UserState state) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = json.encode(state.toJson());
  await preferences.setString('userState', string);
}

Future<UserState> loadFromPrefs() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = preferences.getString('userState');
  if (string != null) {
    Map map = json.decode(string);
    return UserState.fromJson(map);
  }
  return UserState.initialState();
}

void userStateMiddleware(
    Store<UserState> store, action, NextDispatcher next) async {
  next(action);

  if (action is AddUserAction || action is RemoveUserAction) {
    saveToPrefs(store.state);
  }

  if (action is LoginUserAction || action is RegisterUserAction) {
    await loadFromPrefs().then((state) => store.dispatch(LoadedUserAction(state.user)));
  }
}
