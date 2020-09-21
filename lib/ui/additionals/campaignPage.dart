import 'package:flutter/material.dart';

class CampaignPage extends StatefulWidget {
  @override
  _CampaignPageState createState() => _CampaignPageState();
}

class _CampaignPageState extends State<CampaignPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
      child: ListView(
        children: [Text('No active campaigns for this product.')],
      ),
    );
  }
}
