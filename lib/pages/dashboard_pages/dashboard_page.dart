import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  Widget _buildReportFormsDashboardTile() {
    return Container();
  }

  Widget _buildReportDashboardTile() {
    return Container();
  }

  Widget _buildDriversDashboardTile() {
    return Container();
  }

  Widget _buildVehiclesDashboardTile() {
    return Container();
  }

  Widget _buildTeamsDashboardTile() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildTeamsDashboardTile(),
              _buildVehiclesDashboardTile(),
              _buildDriversDashboardTile(),
              _buildReportDashboardTile(),
              _buildReportFormsDashboardTile(),
            ],
          ),
        ),
      ),
    );
  }
}
