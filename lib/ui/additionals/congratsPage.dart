import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CongratsPage extends StatefulWidget {
  @override
  _CongratsPageState createState() => _CongratsPageState();
}

class _CongratsPageState extends State<CongratsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey[300],
                    child: FaIcon(FontAwesomeIcons.gift,
                        color: Colors.black, size: 50),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Congrats!',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Thank you for purchasing. Your order will',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'be delivered today as soon as possible.',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
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
                    'Continue Shopping',
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
