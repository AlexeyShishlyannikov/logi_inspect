import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Company Name'),
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered),
            title: Text('Forms'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/report-forms');
            },
          ),
          ListTile(
            leading: Icon(Icons.receipt),
            title: Text('Reports'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/reports');
            },
          ),
          ListTile(
            leading: Icon(Icons.group_work),
            title: Text('Teams'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/teams');
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Drivers'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/drivers');
            },
          ),
          ListTile(
            leading: Icon(Icons.directions_car),
            title: Text('Vehicles'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/vehicles');
            },
          ),
          Expanded(child: Container()),
          ListTile(
            leading: Icon(Icons.group_add),
            title: Text('Invite driver'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/drivers/invite');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Company'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/company');
            },
          ),
        ],
      ),
    );
  }
}
