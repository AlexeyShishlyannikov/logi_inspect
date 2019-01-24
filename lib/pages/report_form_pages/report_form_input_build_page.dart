import 'package:flutter/material.dart';

class ReportFormInputBuildPage extends StatelessWidget {
  Widget _buildInputNameTextField() {
    return Container();
  }

  Widget _buildInputDescriptionTextField() {
    return Container();
  }

  Widget _buildInputTypeDropdown() {
    return Container();
  }

  Widget _buildSubmitButton() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Build Input'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildInputNameTextField(),
              _buildInputDescriptionTextField(),
              _buildInputTypeDropdown(),
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
