import 'package:flutter/material.dart';

class DriverInvitePage extends StatelessWidget {
  Widget _buildSubmitButton() {
    return Container();
  }

  Widget _buildInviteTextFormField() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite Driver'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildInviteTextFormField(),
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
