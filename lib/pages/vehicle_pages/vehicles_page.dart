import 'package:flutter/material.dart';

class VehiclesPage extends StatelessWidget {
  Widget _buildVehicleImage() {
    return Container();
  }

  Widget _buildVehicleCardTitle() {
    return Container();
  }

  Widget _buildVehicleStatsText() {
    return Container();
  }

  Widget _buildSelectButton() {
    return Container();
  }

  Widget _buildVehicleCard(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          _buildVehicleImage(),
          _buildVehicleCardTitle(),
          _buildVehicleStatsText(),
          Expanded(child: Container()),
          _buildSelectButton(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicles'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: _buildVehicleCard,
          itemCount: 4,
        ),
      ),
    );
  }
}
