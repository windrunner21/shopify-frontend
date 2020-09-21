import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyPhonePage extends StatefulWidget {
  @override
  _VerifyPhonePageState createState() => _VerifyPhonePageState();
}

class _VerifyPhonePageState extends State<VerifyPhonePage> {
  // focus nodes for text fields - sms validation
  final FocusNode _focus1 = FocusNode();
  final FocusNode _focus2 = FocusNode();
  final FocusNode _focus3 = FocusNode();
  final FocusNode _focus4 = FocusNode();
  final FocusNode _focus5 = FocusNode();
  final FocusNode _focus6 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  'Enter the Code',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  'to Verify Your Phone',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text('We have sent you an SMS with a code to'),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text('the number {insertPhoneNumber}'),
              ),
            ),
            SizedBox(height: 20),
            // custom sms code entering
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // sms pin 1
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                      child: TextField(
                          focusNode: _focus1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          onChanged: (str) {
                            if (str.length == 1) {
                              FocusScope.of(context).requestFocus(_focus2);
                            }
                          }),
                    ),
                    // sms pin 2
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                      child: TextField(
                          focusNode: _focus2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          onChanged: (str) {
                            if (str.length == 0) {
                              FocusScope.of(context).requestFocus(_focus1);
                            }
                            if (str.length == 1) {
                              FocusScope.of(context).requestFocus(_focus3);
                            }
                          }),
                    ),
                    // sms pin 3
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                      child: TextField(
                          focusNode: _focus3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          onChanged: (str) {
                            if (str.length == 0) {
                              FocusScope.of(context).requestFocus(_focus2);
                            }
                            if (str.length == 1) {
                              FocusScope.of(context).requestFocus(_focus4);
                            }
                          }),
                    ),
                    // sms pin 4
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                      child: TextField(
                          focusNode: _focus4,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          onChanged: (str) {
                            if (str.length == 0) {
                              FocusScope.of(context).requestFocus(_focus3);
                            }
                            if (str.length == 1) {
                              FocusScope.of(context).requestFocus(_focus5);
                            }
                          }),
                    ),
                    // sms pin 5
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                      child: TextField(
                          focusNode: _focus5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          onChanged: (str) {
                            if (str.length == 0) {
                              FocusScope.of(context).requestFocus(_focus4);
                            }
                            if (str.length == 1) {
                              FocusScope.of(context).requestFocus(_focus6);
                            }
                          }),
                    ),
                    // sms pin 6
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                      child: TextField(
                          focusNode: _focus6,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          onChanged: (str) {
                            if (str.length == 0) {
                              FocusScope.of(context).requestFocus(_focus5);
                            }
                            if (str.length == 1) {
                              print('send code');
                            }
                          }),
                    ),
                  ],
                )),
            SizedBox(height: 40),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Send a new code',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
