import 'package:flutter/material.dart';
import 'package:logisticsinspect/widgets/driver/driver_tile.dart';

class DriversPage extends StatelessWidget {
  Widget _buildDriverTile(BuildContext context, int index) {
    return DriverTile();
  }

  Widget _buildDriverActionItems() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drivers'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: _buildDriverTile,
              itemCount: 10,
            ),
          ),
          _buildDriverActionItems(),
        ],
      ),
    );
  }
}
