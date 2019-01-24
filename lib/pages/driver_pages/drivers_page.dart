import 'package:flutter/material.dart';

class DriversPage extends StatelessWidget {
  Widget _buildDriverTile(BuildContext context, int index) {
    return Container();
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
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            ListView.builder(
              itemBuilder: _buildDriverTile,
              itemCount: 10,
            ),
            _buildDriverActionItems(),
          ],
        ),
      ),
    );
  }
}
