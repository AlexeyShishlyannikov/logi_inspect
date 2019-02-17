import 'dart:convert';
import 'dart:async';

import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:logisticsinspect/store/store_model.dart';
import 'package:logisticsinspect/store/user_store/user_store.dart';

import './user_actions.dart';
import './user_thunk_actions.dart';

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
    Store<AppState> store, action, NextDispatcher next) async {
  next(action);

  if (action is AddUserAction || action is RemoveUserAction) {
    saveToPrefs(store.state.userState);
  }

  if (action is LoginUserAction) loginUser(action);
  if (action is RegisterUserAction) registerUser(action);
  if (action is RegisterCompanyAction) registerCompany(action);
  if (action is ChangePasswordAction) changePassword(action);
  if (action is ForgotPasswordAction) forgotPassword(action);
}
