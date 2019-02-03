import 'package:flutter/material.dart';

class ReportFormTile extends StatelessWidget {
  // final ReportForm reportForm;
  // ReportFormTile({
  // @required this.reportForm,
  // });

  Widget _buildReportFormImage() {
    return CircleAvatar(
      child: Icon(Icons.format_list_numbered),
    );
  }

  Widget _buildReportFormCardTitle() {
    return Container(
      child: Text('Form Name'),
    );
  }

  Widget _buildReportFormStatsText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Form Description'),
        Text('# Reports'),
        Text('# Teams attached'),
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
          leading: _buildReportFormImage(),
          title: _buildReportFormCardTitle(),
          subtitle: _buildReportFormStatsText(),
          trailing: _buildSelectButton(),
        ),
        Divider(),
      ],
    );
  }
}
