import 'package:flutter/material.dart';
import 'package:logisticsinspect/pages/auth_pages/auth_page.dart';
import 'package:logisticsinspect/pages/dashboard_pages/dashboard_page.dart';
import 'package:logisticsinspect/pages/driver_pages/drivers_page.dart';
import 'package:logisticsinspect/pages/report_form_pages/report_forms_page.dart';
import 'package:logisticsinspect/pages/report_pages/reports_page.dart';
import 'package:logisticsinspect/pages/team_pages/teams_page.dart';
import 'package:logisticsinspect/pages/vehicle_pages/vehicles_page.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/': (BuildContext context) => DashboardPage(),
  '/vehicles': (BuildContext context) => VehiclesPage(),
  '/teams': (BuildContext context) => TeamsPage(),
  '/report': (BuildContext context) => ReportsPage(),
  '/report-forms': (BuildContext context) => ReportFormsPage(),
  '/drivers': (BuildContext context) => DriversPage(),
  '/auth': (BuildContext context) => AuthPage(),
};

Route<dynamic> appRouteGenerator(RouteSettings settings) {
  final List<String> pathElements = settings.name.split('/');
  if (pathElements[0] != '') {
    return null;
  }
  if (pathElements[1] == 'product') {
    // final String productId = pathElements[2];
    // final Product product =
    //     mainModel.allProducts.firstWhere((prod) => prod.id == productId);
    // return MaterialPageRoute<bool>(
    //   builder: (BuildContext context) => ProductPage(product),
    // );
  }
  return null;
}
