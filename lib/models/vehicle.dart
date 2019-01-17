import 'package:flutter/foundation.dart';

class Vehicle {
  final String id;
  final String licensePlate;
  final String modelId;
  final String name;
  final int year;

  Vehicle({
    @required this.id,
    @required this.licensePlate,
    @required this.modelId,
    @required this.name,
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
      licensePlate: licensePlate ?? this.licensePlate,
      modelId: modelId ?? this.modelId,
      name: name ?? this.name,
      year: year ?? this.year,
    );
  }

  Vehicle.fromJson(String id, Map json)
      : id = id,
        licensePlate = json['license_plate'],
        modelId = json['model_id'],
        name = json['name'],
        year = json['year'];

  Map toJson() => {
        'license_plate': licensePlate,
        'model_id': modelId,
        'name': name,
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
    @required this.logoUri,
    @required this.name,
  });

  VehicleMake copyWith({
    String id,
    String logoUri,
    String name,
  }) {
    return VehicleMake(
      id: id ?? this.id,
      logoUri: logoUri ?? this.logoUri,
      name: name ?? this.name,
    );
  }

  VehicleMake.fromJson(String id, Map json)
      : id = id,
        logoUri = json['logo_uri'],
        name = json['name'];

  Map toJson() => {
        'logo_uri': logoUri,
        'name': name,
      };

  @override
  String toString() => toJson().toString();
}
