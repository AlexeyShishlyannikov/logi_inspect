import 'package:logisticsinspect/store/report_form_store/report_form_store.dart';

import './report_form_actions.dart';

import 'dart:convert';

import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveToPrefs(ReportFormState state) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = json.encode(state.toJson());
  await preferences.setString('reportFormState', string);
}

Future<ReportFormState> loadFromPrefs() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = preferences.getString('reportFormState');
  if (string != null) {
    Map map = json.decode(string);
    return ReportFormState.fromJson(map);
  }
  return ReportFormState.initialState();
}

void reportFormStateMiddleware(
    Store<ReportFormState> store, action, NextDispatcher next) async {
  next(action);

  if (action is AddReportFormAction ||
      action is AddReportFormFieldAction ||
      action is RemoveFormAction ||
      action is UpdateReportFormAction) {
    saveToPrefs(store.state);
  }

  if (action is GetReportFormAction) {
    await loadFromPrefs()
        .then((state) => store.dispatch(LoadedFormAction(state.reportForm)));
  }
}
