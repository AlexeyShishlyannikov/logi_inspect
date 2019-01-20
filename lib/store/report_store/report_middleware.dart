import 'package:logisticsinspect/store/report_store/report_store.dart';

import './report_actions.dart';

import 'dart:convert';

import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveToPrefs(ReportState state) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = json.encode(state.toJson());
  await preferences.setString('reportState', string);
}

Future<ReportState> loadFromPrefs() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = preferences.getString('reportState');
  if (string != null) {
    Map map = json.decode(string);
    return ReportState.fromJson(map);
  }
  return ReportState.initialState();
}

void reportStateMiddleware(
    Store<ReportState> store, action, NextDispatcher next) async {
  next(action);

  if (action is AddReportAction ||
      action is UpdateReportAction ||
      action is SelectReportAction) {
    saveToPrefs(store.state);
  }

  if (action is GetReportsAction) {
    await loadFromPrefs()
        .then((state) => store.dispatch(LoadedReportsAction(state.reports)));
  }
}
