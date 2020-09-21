import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:shopify/ui/additionals/addressPage.dart';
import 'package:shopify/ui/additionals/congratsPage.dart';
import 'package:shopify/ui/additionals/paymentPage.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  var _currentState = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30),
          // show which state now in
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FaIcon(FontAwesomeIcons.mapMarkerAlt, color: Colors.black),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: MediaQuery.of(context).size.width / 7,
                  dashLength: 5,
                  lineThickness: 5,
                  dashRadius: 5,
                  dashGapLength: 10,
                  dashColor: _currentState == 1 || _currentState == 2
                      ? Colors.black
                      : Colors.grey,
                ),
                FaIcon(FontAwesomeIcons.solidCreditCard,
                    color: _currentState == 1 || _currentState == 2
                        ? Colors.black
                        : Colors.grey),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: MediaQuery.of(context).size.width / 7,
                  lineThickness: 5,
                  dashLength: 5,
                  dashRadius: 5,
                  dashGapLength: 10,
                  dashColor: _currentState == 2 ? Colors.black : Colors.grey,
                ),
                FaIcon(FontAwesomeIcons.solidCheckCircle,
                    color: _currentState == 2 ? Colors.black : Colors.grey)
              ],
            ),
          ),
          SizedBox(height: 50),
          _currentState != 2
              ? Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    'Step ' + (_currentState + 1).toString(),
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                )
              : SizedBox(),
          Expanded(
              child: _currentState == 0
                  ? AddressPage()
                  : _currentState == 1 ? PaymentPage() : CongratsPage())
        ],
      ),
    );
  }
}
