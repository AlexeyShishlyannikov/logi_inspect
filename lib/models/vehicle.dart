import 'package:flutter/foundation.dart';

class Vehicle {
  final String id;
  final String licensePlate;
  final String modelId;
  final String name;
  final int year;

  Vehicle({
    @required this.id,
    @required this.name,
    @required this.modelId,
    @required this.licensePlate,
    @required this.year,
  });

  Vehicle copyWith({
    String id,
    String licensePlate,
    String modelId,
    String name,
    int year,
  }) {
    return Vehicle(
      id: id ?? this.id,
      name: name ?? this.name,
      modelId: modelId ?? this.modelId,
      licensePlate: licensePlate ?? this.licensePlate,
      year: year ?? this.year,
    );
  }

  Vehicle.fromJson(String id, Map json)
      : id = id,
        name = json['name'],
        modelId = json['model_id'],
        licensePlate = json['license_plate'],
        year = json['year'];

  Map toJson() => {
        'name': name,
        'model_id': modelId,
        'license_plate': licensePlate,
        'year': year,
      };

  @override
  String toString() => toJson().toString();
}

class VehicleModel {
  final String id;
  final String name;

  VehicleModel({
    @required this.id,
    @required this.name,
  });

  VehicleModel copyWith({
    String id,
    String name,
  }) {
    return VehicleModel(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  VehicleModel.fromJson(String id, Map json)
      : id = id,
        name = json['name'];

  Map toJson() => {
        'name': name,
      };

  @override
  String toString() => toJson().toString();
}

class VehicleMake {
  final String id;
  final String logoUri;
  final String name;

  VehicleMake({
    @required this.id,
    @required this.name,
    @required this.logoUri,
  });

  VehicleMake copyWith({
    String id,
    String name,
    String logoUri,
  }) {
    return VehicleMake(
      id: id ?? this.id,
      name: name ?? this.name,
      logoUri: logoUri ?? this.logoUri,
    );
  }

  VehicleMake.fromJson(String id, Map json)
      : id = id,
        name = json['name'],
        logoUri = json['logo_uri'];

  Map toJson() => {
        'name': name,
        'logo_uri': logoUri,
      };

  @override
  String toString() => toJson().toString();
}
