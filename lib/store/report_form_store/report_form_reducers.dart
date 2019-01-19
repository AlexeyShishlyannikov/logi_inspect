import 'package:logisticsinspect/models/report_form.dart';
import 'package:logisticsinspect/store/report_form_store/report_form_store.dart';
import './report_form_actions.dart';

ReportFormState reportFormStateReducer(ReportFormState state, action) {
  return ReportFormState(
    reportForm: reportFormReducer(state.reportForm, action),
  );
}

ReportForm reportFormReducer(ReportForm reportForm, action) {
  if (action is AddReportFormAction) {
    return action.reportForm;
  }

  if (action is LoadedFormAction) {
    return action.reportForm;
  }

  if (action is UpdateReportFormAction) {
    return action.reportForm;
  }

  if (action is RemoveFormAction) {
    return null;
  }

  if (action is AddReportFormFieldAction) {
    return reportForm.copyWith(
        formFields: []
          ..addAll(reportForm.formFields)
          ..add(action.reportFormField));
  }

  if (action is RemoveReportFormFieldAction) {
    return reportForm.copyWith(
        formFields: []
          ..addAll(reportForm.formFields)
          ..remove(action.reportFormField));
  }

  return reportForm;
}
