import 'package:flutter/material.dart';

class DriverTile extends StatelessWidget {
  // final Driver driver;
  // DriverTile({
  // @required this.driver,
  // });

  Widget _buildDriverImage() {
    return CircleAvatar(
      child: Icon(Icons.person),
    );
  }

  Widget _buildDriverCardTitle() {
    return Container(
      child: Text('Person Name'),
    );
  }

  Widget _buildDriverStatsText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Phone Number'),
        Text('Email'),
      ],
    );
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
          leading: _buildDriverImage(),
          title: _buildDriverCardTitle(),
          subtitle: _buildDriverStatsText(),
          trailing: _buildSelectButton(),
        ),
        Divider(),
      ],
    );
  }
}
