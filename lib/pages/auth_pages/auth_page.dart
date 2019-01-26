import 'package:flutter/material.dart';
import 'package:logisticsinspect/constants/constants.dart';

enum AuthMode {
  Login,
  Register,
  Forgot,
  Reset,
}

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _emailTextController = TextEditingController();

  final _passwordTextController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  AuthMode _authMode = AuthMode.Login;

  Widget _buildEmailTextFormField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      controller: _emailTextController,
      validator: (String input) {
        if (input.isEmpty || !RegExp(emailRegexp).hasMatch(input)) {
          return 'Please provide a valid email.';
        }
      },
    );
  }

  Widget _buildPasswordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: _passwordTextController,
      validator: (String input) {
        if (input.length < 6) {
          return 'Password should be at least 6 characters.';
        }
      },
    );
  }

  Widget _buildConfirmPasswordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Confirm Password'),
      keyboardType: TextInputType.text,
      obscureText: true,
      validator: (String input) {
        if (_passwordTextController.text != input) {
          return 'Passwords don\'t match.';
        }
      },
    );
  }

  void _submitForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
  }

  void _switchAuthModes() {
    setState(() {
      _authMode =
          _authMode == AuthMode.Login ? AuthMode.Register : AuthMode.Login;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  _buildEmailTextFormField(),
                  _buildPasswordTextFormField(),
                  _authMode == AuthMode.Register
                      ? _buildConfirmPasswordTextFormField()
                      : Container(),
                  FlatButton(
                    child: Text('Switch to ' +
                        (_authMode == AuthMode.Login ? 'SIGN UP' : 'LOGIN')),
                    onPressed: _switchAuthModes,
                  ),
                  RaisedButton(
                    child:
                        Text(_authMode == AuthMode.Login ? 'Login' : 'Sign up'),
                    onPressed: () => _submitForm(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
