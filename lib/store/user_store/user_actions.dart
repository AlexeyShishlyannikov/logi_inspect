
import 'package:flutter/foundation.dart';
import 'package:logisticsinspect/models/user.dart';

class AddUserAction {
  final User user;
  AddUserAction({
    @required this.user,
  });
}

class RefreshTokenAction {}
class RemoveUserAction {}
class LoginUserAction {
  final String email;
  final String password;

  LoginUserAction({
    @required this.email,
    @required this.password,
  });
}

class RegisterUserAction {
  final String email;
  final String password;

  RegisterUserAction({
    @required this.email,
    @required this.password,
  });
}

class UpdateTokenDataAction {
  final AuthenticationToken token;
  UpdateTokenDataAction({
    @required this.token,
  });
}

class RemoveTokenDataAction {}

class SetAuthenticationAction {
  final bool isAuthenticated;
  SetAuthenticationAction({
    @required this.isAuthenticated,
  });
}