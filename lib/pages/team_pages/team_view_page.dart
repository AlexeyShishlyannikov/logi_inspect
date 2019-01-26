import 'package:flutter/material.dart';

class TeamViewPage extends StatelessWidget {
  Widget _buildTeamActionItems() {
    return Container();
  }

  Widget _buildPeopleSection() {
    return Container();
  }

  Widget _buildReportFormSection() {
    return Container();
  }

  Widget _buildTeamVehiclesSection() {
    return Container();
  }

  Widget _buildTeamReportsSection() {
    return Container();
  }

  Widget _buildTeamModelSection() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team Name'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildTeamModelSection(),
              _buildTeamReportsSection(),
              _buildTeamVehiclesSection(),
              _buildReportFormSection(),
              _buildPeopleSection(),
              _buildTeamActionItems(),
            ],
          ),
        ),
      ),
    );
  }
}
