import 'package:flutter/foundation.dart';

enum FormFieldType {
  TextField,
  NumberField,
}

class ReportForm {
  final String id;
  final DateTime created;
  final String description;
  final String name;
  final List<ReportFormField> formFields;

  ReportForm({
    @required this.id,
    @required this.created,
    @required this.description,
    @required this.name,
    @required this.formFields,
  });

  ReportForm copyWith({
    String id,
    DateTime created,
    String description,
    String name,
    List<ReportFormField> formFields,
  }) {
    ReportForm(
      id: id ?? this.id,
      created: created ?? this.created,
      description: description ?? this.description,
      name: name ?? this.name,
      formFields: formFields ?? this.formFields,
    );
  }

  ReportForm.fromJson(String id, Map json)
      : id = id,
        created = json['created'],
        description = json['description'],
        name = json['name'],
        formFields = json['form_fields'];

  Map toJson() => {
        'created': created,
        'description': description,
        'name': name,
        'form_fields': formFields,
      };

  @override
  String toString() => toJson().toString();
}

class ReportFormField {
  final String id;
  final String description;
  final String name;
  final FormFieldType type;

  ReportFormField({
    @required this.id,
    @required this.description,
    @required this.name,
    @required this.type,
  });

  ReportFormField copyWith({
    String id,
    String description,
    String name,
    FormFieldType type,
  }) {
    return ReportFormField(
      id: id ?? this.id,
      description: description ?? this.description,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }

  ReportFormField.fromJson(String id, Map json)
      : id = id,
        description = json['description'],
        name = json['name'],
        type = json['type'];

  Map toJson() => {
        'id': id,
        'description': description,
        'name': name,
        'type': type,
      };

  @override
  String toString() => toJson().toString();
}
