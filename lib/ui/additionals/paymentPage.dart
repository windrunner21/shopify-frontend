import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Payment',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 50),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 22,
                width: MediaQuery.of(context).size.width / 1.15,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.black,
                  elevation: 4.0,
                  child: Text(
                    'Authorize Payment',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
