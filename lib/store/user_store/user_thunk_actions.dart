import 'dart:convert';

import 'package:logisticsinspect/constants/constants.dart';
import 'package:logisticsinspect/models/user.dart';
import 'package:logisticsinspect/store/user_store/user_store.dart';

import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:http/http.dart' as http;

import './user_actions.dart';

ThunkAction<UserState> registerUser(RegisterUserAction action) =>
    (Store<UserState> store) async {
      http.Response response = await http.post(
        Uri.encodeFull(apiUrl + 'account/register/user'),
        body: action.toJson(),
      );
      User returnedTokenUser = User(token: response.body);
      store.dispatch(LoadedUserAction(returnedTokenUser));
    };

ThunkAction<UserState> registerCompany(RegisterCompanyAction action) =>
    (Store<UserState> store) async {
      http.Response response = await http.post(
        Uri.encodeFull(apiUrl + 'account/register/company'),
        body: action.toJson(),
      );
      User returnedTokenUser = User(token: response.body);
      store.dispatch(LoadedUserAction(returnedTokenUser));
    };

ThunkAction<UserState> loginUser(LoginUserAction action) =>
    (Store<UserState> store) async {
      http.Response response = await http.post(
        Uri.encodeFull(apiUrl + 'account/login'),
        body: action.toJson(),
      );
      User returnedTokenUser = User(token: response.body);
      store.dispatch(LoadedUserAction(returnedTokenUser));
    };

ThunkAction<UserState> forgotPassword(ForgotPasswordAction action) =>
    (Store<UserState> store) async {
      http.Response response = await http.post(
        Uri.encodeFull(apiUrl + 'account/forgot'),
        body: action.toJson(),
      );
    };

ThunkAction<UserState> changePassword(ChangePasswordAction action) =>
    (Store<UserState> store) async {
      http.Response response = await http.post(
        Uri.encodeFull(apiUrl + 'account/change'),
        body: action.toJson(),
      );
      User returnedTokenUser = User(token: response.body);
      store.dispatch(LoadedUserAction(returnedTokenUser));
    };

ThunkAction<UserState> resetPassword(ResetPasswordAction action) =>
    (Store<UserState> store) async {
      http.Response response = await http.post(
        Uri.encodeFull(apiUrl + 'account/reset'),
        body: action.toJson(),
      );
      User returnedTokenUser = User(token: response.body);
      store.dispatch(LoadedUserAction(returnedTokenUser));
    };
