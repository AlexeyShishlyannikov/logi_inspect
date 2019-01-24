import 'package:flutter/material.dart';

class DriverViewPage extends StatelessWidget {
  Widget _buildDriverActionItems() {
    return Container();
  }

  Widget _buildDriverRecentVehicles() {
    return Container();
  }

  Widget _buildDriverRecentReports() {
    return Container();
  }

  Widget _buildDriverInfo() {
    return Container();
  }

  Widget _buildDriverImage() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildDriverImage(),
              _buildDriverInfo(),
              _buildDriverRecentReports(),
              _buildDriverRecentVehicles(),
              _buildDriverActionItems(),
            ],
          ),
        ),
      ),
    );
  }
}
