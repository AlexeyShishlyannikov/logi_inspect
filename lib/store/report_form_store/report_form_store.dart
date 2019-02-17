import 'package:logisticsinspect/models/report_form.dart';

class ReportFormState {
  final ReportForm selectedReportForm;
  final List<ReportForm> reportForms;

  ReportFormState({
    this.selectedReportForm,
    this.reportForms,
  });

  ReportFormState.initialState()
      : selectedReportForm = null,
        reportForms = [];

  ReportFormState.fromJson(Map json)
      : selectedReportForm = ReportForm.fromJson(json['reportForm']),
        reportForms = (json['reportForms'] as List)
            .map((reportForm) => ReportForm.fromJson(reportForm))
            .toList();

  Map toJson() => {
        'reportForm': selectedReportForm.toJson(),
        'reportForms':
            reportForms.map((reportForm) => reportForm.toJson()).toList(),
      };

  @override
  String toString() => this.toJson().toString();
}
