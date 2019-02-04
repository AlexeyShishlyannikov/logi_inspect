import 'package:flutter/material.dart';

class DriverInvitePage extends StatefulWidget {
  @override
  DriverInvitePageState createState() {
    return DriverInvitePageState();
  }
}

class DriverInvitePageState extends State<DriverInvitePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _phoneNumberController = TextEditingController();

  Widget _buildInviteTextFormField() {
    return TextFormField(
      controller: _phoneNumberController,
      keyboardType: TextInputType.phone,
      onSaved: (String input) {},
      decoration: InputDecoration(labelText: 'Phone'),
    );
  }

  Widget _buildSubmitButton() {
    return RaisedButton(
      child: Text('Send invite'),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite Driver'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  _buildInviteTextFormField(),
                  SizedBox(height: 10.0),
                  _buildSubmitButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
