import 'package:flutter/material.dart';

class TeamsPage extends StatelessWidget {
  Widget _buildTeamCardImage() {
    return Container();
  }

  Widget _buildTeamCardStats() {
    return Container();
  }

  Widget _buildTeamCardActionButtons() {
    return Container();
  }

  Widget _buildTeamCard(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        _buildTeamCardImage(),
        Text('Team Name'),
        _buildTeamCardStats(),
        _buildTeamCardActionButtons(),
      ],
    );
  }

  Widget _buildTeamsActionItems() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teams'),
      ),
      body: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              ListView.builder(
                itemBuilder: _buildTeamCard,
                itemCount: 5,
              ),
              _buildTeamsActionItems(),
            ],
          )),
    );
  }
}
