import 'package:flutter/foundation.dart';
import '../../models/report_form.dart';

class AddReportFormAction {
  final ReportForm reportForm;
  AddReportFormAction(this.reportForm);
}

class RemoveFormAction {
  final ReportForm reportForm;
  RemoveFormAction(this.reportForm);
}

class GetReportFormAction {
  final String teamId;
  GetReportFormAction(this.teamId);
}

class LoadedFormAction {
  final ReportForm reportForm;
  LoadedFormAction(this.reportForm);
}

class UpdateReportFormAction {
  final ReportForm reportForm;
  UpdateReportFormAction(this.reportForm);
}

class AddReportFormFieldAction {
  final ReportFormField reportFormField;
  AddReportFormFieldAction(this.reportFormField);
}

class RemoveReportFormFieldAction {
  final ReportFormField reportFormField;
  RemoveReportFormFieldAction(this.reportFormField);
}
