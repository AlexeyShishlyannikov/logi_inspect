import 'package:flutter/material.dart';

class ReportFormsPage extends StatelessWidget {
  Widget _buildReportFormTile(BuildContext context, int index) {
    return Container();
  }

  Widget _buildReportFormsActionItems() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              ListView.builder(
                itemBuilder: _buildReportFormTile,
                itemCount: 10,
              ),
              _buildReportFormsActionItems(),
            ],
          ),
        ),
      ),
    );
  }
}
