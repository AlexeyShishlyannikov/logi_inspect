import 'package:flutter/material.dart';

class VehicleEditPage extends StatefulWidget {
  @override
  VehicleEditPageState createState() {
    return VehicleEditPageState();
  }
}

class VehicleEditPageState extends State<VehicleEditPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _yearTextController = TextEditingController();
  final TextEditingController _licensePlateTextController =
      TextEditingController();
  final TextEditingController _vinTextController = TextEditingController();

  Widget _buildVehiclePhotoForm() {
    return Column(
      children: <Widget>[
        Image.asset('assets/van.jpg'),
        SizedBox(height: 5),
        RaisedButton(
          child: Text('Change image'),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildNameFormTextField() {
    return TextFormField(
      controller: _nameTextController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: 'Name'),
      onSaved: (String input) {},
      validator: (String input) {},
    );
  }

  Widget _buildYearFormTextField() {
    return TextFormField(
      controller: _yearTextController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Year'),
      onSaved: (String input) {},
      validator: (String input) {},
    );
  }

  Widget _buildLicensePlateFormTextField() {
    return TextFormField(
      controller: _licensePlateTextController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: 'License Plate'),
      onSaved: (String input) {},
      validator: (String input) {},
    );
  }

  Widget _buildVINFormTextField() {
    return TextFormField(
      controller: _vinTextController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: 'VIN'),
      onSaved: (String input) {},
      validator: (String input) {},
    );
  }

  Widget _buildMakeFormDropdown() {
    return ListTile(
      title: Text('data'),
      leading: Text('Make'),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildModelFormDropdown() {
    return ListTile(
      title: Text('data'),
      leading: Text('Model'),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildTeamFormDropdown() {
    return ListTile(
      title: Text('data'),
      leading: Text('Team'),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }

  Widget _buildVehicleModelForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          _buildNameFormTextField(),
          _buildYearFormTextField(),
          _buildLicensePlateFormTextField(),
          _buildVINFormTextField(),
          _buildMakeFormDropdown(),
          Divider(),
          _buildModelFormDropdown(),
          Divider(),
          _buildTeamFormDropdown(),
          Divider(),
        ],
      ),
    );
  }

  Widget _buildVehicleActionItems() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Vehicle'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: ListView(
          children: <Widget>[
            _buildVehiclePhotoForm(),
            _buildVehicleModelForm(),
            _buildVehicleActionItems(),
          ],
        ),
      ),
    );
  }
}
