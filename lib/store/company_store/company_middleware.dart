import 'dart:convert';
import 'dart:async';

import 'package:logisticsinspect/store/company_store/company_store.dart';
import 'package:logisticsinspect/store/store_model.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './company_actions.dart';

void saveToPrefs(CompanyState state) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = json.encode(state.toJson());
  await preferences.setString('companyState', string);
}

Future<CompanyState> loadFromPrefs() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var string = preferences.getString('companyState');
  if (string != null) {
    Map map = json.decode(string);
    return CompanyState.fromJson(map);
  }
  return CompanyState.initialState();
}

void companyStateMiddleware(
    Store<AppState> store, action, NextDispatcher next) async {
  next(action);
  
  if (action is RemoveCompanyAction) {
    return saveToPrefs(store.state.companyState);
  }

  if (action is GetCompanyAction) {
    await loadFromPrefs().then(
        (state) => store.dispatch(CompanyLoadedAction(company: state.company)));
  }
}
