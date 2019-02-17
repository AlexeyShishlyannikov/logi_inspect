import 'package:flutter/foundation.dart';

class Company {
  final String id;
  final String logoUri;
  final String name;
  final String userId;

  Company({
    @required this.id,
    @required this.logoUri,
    @required this.name,
    @required this.userId,
  });

  Company copyWith({
    String id,
    String logoUri,
    String name,
    String userId,
  }) {
    return Company(
      id: id ?? this.id,
      logoUri: logoUri ?? this.logoUri,
      name: name ?? this.name,
      userId: userId ?? this.userId,
    );
  }

  Company.fromJson(Map json)
      : logoUri = json['logo_uri'],
        id = json['id'],
        name = json['name'],
        userId = json['userId'];

  Map toJson() => {
        'id': id,
        'logo_uri': logoUri,
        'name': name,
        'userId': userId,
      };

  @override
  String toString() => toJson().toString();
}
