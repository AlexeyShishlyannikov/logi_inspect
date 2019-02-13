import 'package:flutter/material.dart';

import 'package:logisticsinspect/pages/auth_pages/auth_page.dart';

import 'package:logisticsinspect/pages/dashboard_pages/dashboard_page.dart';
import 'package:logisticsinspect/pages/driver_pages/driver_edit_page.dart';
import 'package:logisticsinspect/pages/driver_pages/driver_view_page.dart';

import 'package:logisticsinspect/pages/driver_pages/drivers_page.dart';
import 'package:logisticsinspect/pages/report_form_pages/report_form_build_page.dart';
import 'package:logisticsinspect/pages/report_pages/report_edit_page.dart';
import 'package:logisticsinspect/pages/report_pages/report_view_page.dart';

import 'package:logisticsinspect/pages/report_pages/reports_page.dart';

import 'package:logisticsinspect/pages/report_form_pages/report_forms_page.dart';
import 'package:logisticsinspect/pages/team_pages/team_edit_page.dart';
import 'package:logisticsinspect/pages/team_pages/team_view_page.dart';

import 'package:logisticsinspect/pages/team_pages/teams_page.dart';
import 'package:logisticsinspect/pages/vehicle_pages/vehicle_edit_page.dart';

import 'package:logisticsinspect/pages/vehicle_pages/vehicles_page.dart';
import 'package:logisticsinspect/pages/vehicle_pages/vehicle_view_page.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/': (BuildContext context) => DashboardPage(),
  '/auth': (BuildContext context) => AuthPage(),
  '/vehicles': (BuildContext context) => VehiclesPage(),
  '/teams': (BuildContext context) => TeamsPage(),
  '/report': (BuildContext context) => ReportsPage(),
  '/report-forms': (BuildContext context) => ReportFormsPage(),
  '/drivers': (BuildContext context) => DriversPage(),
};

Route<dynamic> appRouteGenerator(RouteSettings settings) {
  final List<String> pathElements = settings.name.split('/');
  if (pathElements[0] != '') {
    return null;
  }
  if (pathElements[1] == 'vehicles') {
    final String vehicleId = pathElements[3];
    if (pathElements[2] == 'view') {
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) => VehicleViewPage(vehicleId),
      );
    } else if (pathElements[2] == 'edit') {
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) => VehicleEditPage(vehicleId),
      );
    }
  } else if (pathElements[1] == 'teams') {
    final String teamId = pathElements[3];
    if (pathElements[2] == 'view') {
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) => TeamViewPage(teamId),
      );
    } else if (pathElements[2] == 'edit') {
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) => TeamEditPage(teamId),
      );
    }
  } else if (pathElements[1] == 'report') {
    final String reportId = pathElements[3];
    if (pathElements[2] == 'view') {
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) => ReportViewPage(reportId),
      );
    } else if (pathElements[2] == 'edit') {
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) => ReportEditPage(reportId),
      );
    }
  } else if (pathElements[1] == 'report-forms') {
    final String reportFormId = pathElements[3];
    if (pathElements[2] == 'view') {
      // return MaterialPageRoute<bool>(
      //   builder: (BuildContext context) => ReportFormBuildPage(reportFormId),
      // );
    } else if (pathElements[2] == 'edit') {
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) => ReportFormBuildPage(reportFormId),
      );
    }
  } else if (pathElements[1] == 'drivers') {
    final String driverId = pathElements[3];
    if (pathElements[2] == 'view') {
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) => DriverViewPage(driverId),
      );
    } else if (pathElements[2] == 'edit') {
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) => DriverEditPage(driverId),
      );
    }
  } else if (pathElements[1] == 'auth') {
    // final String reportId = pathElements[3];
    // return MaterialPageRoute<bool>(
    //   builder: (BuildContext context) => ReportViewPage(reportId),
    // );
  }
  return null;
}
