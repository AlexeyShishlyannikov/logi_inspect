import 'package:flutter/foundation.dart';
import 'package:logisticsinspect/models/user.dart';

class UserState {
  final User user;
  final AuthenticationToken token;
  final bool isAuthenticated;
  final bool isLoading;

  UserState({
    @required this.user,
    @required this.token,
    @required this.isAuthenticated,
    @required this.isLoading,
  });

  UserState.initialState()
      : user = null,
        token = null,
        isAuthenticated = false,
        isLoading = false;

  UserState.fromJson(Map json)
      : user = User.fromJson(json['user']),
        token = AuthenticationToken.fromString(
            json['user'] ? json['user']['token'] : null),
        isAuthenticated = json['user']['token'] != null,
        isLoading = false;

  Map toJson() => {
        'user': user.toString(),
        'token': token.toString(),
        'isAuthenticated': isAuthenticated,
      };
}
