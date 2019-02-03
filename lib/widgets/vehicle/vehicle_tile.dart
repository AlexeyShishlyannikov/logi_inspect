import 'package:flutter/material.dart';
import 'package:logisticsinspect/models/vehicle.dart';

class VehicleTile extends StatelessWidget {
  // final Vehicle vehicle;
  // VehicleTile({
  // @required this.vehicle,
  // });

  Widget _buildVehicleImage() {
    return CircleAvatar(
      child: Icon(Icons.drive_eta),
    );
  }

  Widget _buildVehicleCardTitle() {
    return Container(
      child: Text('Vehicle Name'),
    );
  }

  Widget _buildVehicleStatsText() {
    return Text('Vehicle Description');
  }

  Widget _buildSelectButton() {
    return IconButton(
      icon: Icon(Icons.chevron_right),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: _buildVehicleImage(),
          title: _buildVehicleCardTitle(),
          subtitle: _buildVehicleStatsText(),
          trailing: _buildSelectButton(),
        ),
        Divider(),
      ],
    );
  }
}
