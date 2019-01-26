import 'package:flutter/material.dart';

class DriverEditPage extends StatelessWidget {
  Widget _buildDriverActionItems() {
    return Container();
  }

  Widget _buildDriverInfoForm() {
    return Container();
  }

  Widget _buildDriverEditImage() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Driver'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildDriverEditImage(),
              _buildDriverInfoForm(),
              _buildDriverActionItems(),
            ],
          ),
        ),
      ),
    );
  }
}
