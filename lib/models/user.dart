import 'package:flutter/foundation.dart';

class User {
  final String token;

  User({
    @required this.token,
  });

  User.fromJson(Map json) : token = json['token'];

  Map toJson() => {
        'token': token,
      };

  @override
  String toString() => toJson().toString();
}

class AuthenticationToken {
  final String email;
  final int expirationDate;

  AuthenticationToken({
    @required this.expirationDate,
    @required this.email,
  });

  factory AuthenticationToken.fromString(String token) {
    return AuthenticationToken(
      email: 'todo',
      expirationDate: 0,
    );
  }
}
