import 'package:flutter/material.dart';

class DriverViewPage extends StatelessWidget {
  Widget _buildDriverImage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CircleAvatar(
        child: Text(
          'PN',
          style: TextStyle(fontSize: 50.0),
        ),
        radius: MediaQuery.of(context).size.width / 6,
      ),
    );
  }

  Widget _buildDriverInfo() {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('Person Name', style: TextStyle(fontSize: 20.0)),
            Text('Team Name'),
          ],
        ),
        SizedBox(height: 20.0),
        Column(
          children: <Widget>[
            ListTile(
              title: Text('email@gmail.com'),
              subtitle: Text('Email'),
            ),
            ListTile(
              title: Text('1 (102) 232-3233'),
              subtitle: Text('Phone'),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildDriverRecentReports() {
    return Container();
  }

  Widget _buildDriverActionItems() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver'),
      ),
      body: Column(
        children: <Widget>[
          _buildDriverImage(context),
          _buildDriverInfo(),
          _buildDriverRecentReports(),
          _buildDriverActionItems(),
        ],
      ),
    );
  }
}
