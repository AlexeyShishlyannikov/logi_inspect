import 'package:flutter/foundation.dart';
import 'package:logisticsinspect/models/report.dart';

class ReportState {
  final Report selectedReport;
  final List<Report> reports;

  ReportState({
    @required this.selectedReport,
    @required this.reports,
  });

  ReportState.fromJson(Map json)
      : reports =
            (json['reports'] as List).map((report) => Report.fromJson(report)),
        selectedReport = Report.fromJson(json['selectedReport']);

  Map toJson() => {
        'reports': reports.map((report) => report.toJson()),
        'selectedReport': selectedReport.toJson(),
      };
}
