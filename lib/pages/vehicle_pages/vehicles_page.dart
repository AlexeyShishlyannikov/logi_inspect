import 'package:flutter/material.dart';
import 'package:logisticsinspect/widgets/vehicle/vehicle_tile.dart';

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


  Widget _buildVehicleCard(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: VehicleTile(),
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
