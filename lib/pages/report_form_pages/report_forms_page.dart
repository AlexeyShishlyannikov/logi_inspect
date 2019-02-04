import 'package:flutter/material.dart';
import 'package:logisticsinspect/widgets/report_form/report_form_tile.dart';

class ReportFormsPage extends StatelessWidget {
  Widget _buildReportFormTile() {
    return FlatButton(
      child: ReportFormTile(),
      onPressed: () {},
    );
  }

  List<Widget> _getReportFormTiles() {
    return List.generate(3, (_) => _buildReportFormTile());
  }

  List<Widget> _getArchivedReportFormTiles() {
    return List.generate(1, (_) => _buildReportFormTile());
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
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Active Forms',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.0),
              Column(children: _getReportFormTiles()),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.archive),
                  Text(
                    'Archived Forms',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Column(children: _getArchivedReportFormTiles()),
            ],
          ),
          _buildReportFormsActionItems(),
        ],
      ),
    );
  }
}
