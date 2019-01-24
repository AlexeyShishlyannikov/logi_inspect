import 'package:flutter/material.dart';

class AuthResetPasswordPage extends StatelessWidget {
  Widget _buildPasswordTextField() {
    return Container();
  }

  Widget _buildConfirmPasswordTextField() {
    return Container();
  }

  Widget _buildSubmitButton() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              _buildPasswordTextField(),
              _buildConfirmPasswordTextField(),
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
