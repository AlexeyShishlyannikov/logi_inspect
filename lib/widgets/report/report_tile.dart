import 'package:flutter/material.dart';

class ReportTile extends StatelessWidget {
  Widget _buildReportImage() {
    return CircleAvatar(
      child: Icon(Icons.receipt),
    );
  }

  Widget _buildReportCardTitle() {
    return Container(
      child: Text('Vehicle Name by Person Name'),
    );
  }

  Widget _buildReportStatsText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Date Created: ' + DateTime.now().toString()),
        Text('Date Updated: ' + DateTime.now().toString()),
      ],
    );
  }

  Widget _buildSelectButton() {
    return IconButton(
      icon: Icon(Icons.chevron_right),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: _buildReportImage(),
          title: _buildReportCardTitle(),
          subtitle: _buildReportStatsText(),
          trailing: _buildSelectButton(),
        ),
        Divider(),
      ],
    );
  }
}
