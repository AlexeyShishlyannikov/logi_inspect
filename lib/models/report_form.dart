import 'package:flutter/foundation.dart';

enum FormFieldType {
  TextField,
  NumberField,
  PhotoField
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
    return ReportForm(
      id: id ?? this.id,
      created: created ?? this.created,
      description: description ?? this.description,
      name: name ?? this.name,
      formFields: formFields ?? this.formFields,
    );
  }

  ReportForm.fromJson(Map json)
      : id = json['id'],
        created = json['created'],
        description = json['description'],
        name = json['name'],
        formFields = (json['form_fields'] as List)
            .map((formField) => ReportFormField.fromJson(formField))
            .toList();

  Map toJson() => {
        'created': created,
        'description': description,
        'name': name,
        'form_fields': formFields.map((field) => field.toJson()).toList(),
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

  ReportFormField.fromJson(Map json)
      : id = json['id'],
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
