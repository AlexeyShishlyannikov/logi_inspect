import 'package:flutter/material.dart';

class VehicleEditPage extends StatelessWidget {
  Widget _buildVehiclePhotoForm() {
    return Container();
  }

  Widget _buildVehicleModelForm() {
    return Container();
  }

  Widget _buildVehicleActionItems() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Vehicle'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildVehiclePhotoForm(),
              _buildVehicleModelForm(),
              _buildVehicleActionItems(),
            ],
          ),
        ),
      ),
    );
  }
}
