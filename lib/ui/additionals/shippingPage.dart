import 'package:flutter/material.dart';

class ShippingPage extends StatefulWidget {
  @override
  _ShippingPageState createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
      child: ListView(
        children: [Text('Usually ships in about 15 minutes.')],
      ),
    );
  }
}
