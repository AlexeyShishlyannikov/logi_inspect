import 'package:flutter/material.dart';

class VehicleViewPage extends StatelessWidget {

  Widget _buildVehicleActionItems() {
    return Container();
  }

  Widget _buildVehicleStats() {
    return Container();
  }

  Widget _buildVehicleImage() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle name'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildVehicleImage(),
              _buildVehicleStats(),
              _buildVehicleActionItems(),
            ],
          ),
        ),
      ),
    );
  }
}
