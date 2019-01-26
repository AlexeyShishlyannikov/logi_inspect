import 'package:flutter/material.dart';

class TeamEditPage extends StatelessWidget {
  Widget _buildTeamActionItems() {
    return Container();
  }

  Widget _buildTeamReportFormTile() {
    return Container();
  }

  Widget _buildTeamReportsTile() {
    return Container();
  }

  Widget _buildTeamVehiclesTile() {
    return Container();
  }

  Widget _buildTeamDriversTile() {
    return Container();
  }

  Widget _buildTeamModelForm() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Team'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildTeamModelForm(),
              _buildTeamDriversTile(),
              _buildTeamVehiclesTile(),
              _buildTeamReportsTile(),
              _buildTeamReportFormTile(),
              _buildTeamActionItems(),
            ],
          ),
        ),
      ),
    );
  }
}
