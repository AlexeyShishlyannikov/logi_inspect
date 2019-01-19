import 'package:logisticsinspect/models/report_form.dart';

class ReportFormState {
  final ReportForm reportForm;

  ReportFormState({
    this.reportForm,
  });

  ReportFormState.initialState() : reportForm = null;

  ReportFormState.fromJson(Map json)
      : reportForm = ReportForm.fromJson(
          json['reportForm'] != null ? json['repoerForm']['id'] : null,
          json['reportForm'],
        );

  Map toJson() => {'reportForm': reportForm.toJson()};
}
