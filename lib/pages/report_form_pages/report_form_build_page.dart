import 'package:flutter/material.dart';

class ReportFormBuildPage extends StatelessWidget {
  Widget _buildFormInfoTextFields() {
    return Container();
  }

  Widget _buildFormInputTiles() {
    return Container();
  }

  Widget _buildFormInputsAddTile() {
    return Container();
  }

  Widget _buildSubmitButton() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Build Form'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildFormInfoTextFields(),
              _buildFormInputTiles(),
              _buildFormInputsAddTile(),
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
