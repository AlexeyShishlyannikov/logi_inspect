import 'package:flutter/material.dart';

class AuthAcceptInvitePage extends StatelessWidget {
  Widget _buildSubmitButton() {
    return Container();
  }

  Widget _buildLastNameTextField() {
    return Container();
  }

  Widget _buildFirstNameTextField() {
    return Container();
  }

  Widget _buildConfirmPasswordTextField() {
    return Container();
  }

  Widget _buildPasswordTextField() {
    return Container();
  }

  Widget _buildUsernameTextField() {
    return Container();
  }

  Widget _buildCompanyInfoTile() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accept Invite'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildCompanyInfoTile(),
              _buildUsernameTextField(),
              _buildPasswordTextField(),
              _buildConfirmPasswordTextField(),
              _buildFirstNameTextField(),
              _buildLastNameTextField(),
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
