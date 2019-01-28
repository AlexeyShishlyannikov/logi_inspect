import 'package:flutter/material.dart';

class VehiclesPage extends StatelessWidget {
  Widget _buildSearchBox() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        labelText: 'Search',
      ),
      keyboardType: TextInputType.text,
      onChanged: (String input) {},
    );
  }

  Widget _buildVehicleImage() {
    return CircleAvatar(
      child: Icon(Icons.drive_eta),
    );
  }

  Widget _buildVehicleCardTitle() {
    return Container(
      child: Text('Vehicle Name'),
    );
  }

  Widget _buildVehicleStatsText() {
    return Text('Vehicle Description');
  }

  Widget _buildSelectButton() {
    return Container(
      child: IconButton(
        icon: Icon(Icons.chevron_right),
        onPressed: () {},
      ),
    );
  }

  Widget _buildVehicleCard(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: _buildVehicleImage(),
            title: _buildVehicleCardTitle(),
            subtitle: _buildVehicleStatsText(),
            trailing: _buildSelectButton(),
          ),
          Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicles'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Column(
          children: <Widget>[
            _buildSearchBox(),
            Expanded(
              child: ListView.builder(
                itemBuilder: _buildVehicleCard,
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
