import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'forgotpasswordPage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // key to check the sign in form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7DED8),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Log into',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'your account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54),
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ),
                      TextFormField(
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                          suffix: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPasswordPage()),
                              );
                            },
                            child: Text(
                              'Forgot?',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height / 22,
                width: MediaQuery.of(context).size.width / 1.15,
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      print('validated');
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/homePage', (_) => false);
                    }
                  },
                  color: Colors.black,
                  elevation: 4.0,
                  child: Text('Log In', style: TextStyle(color: Colors.white)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Or sign up with social account',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 22,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.black,
                      elevation: 4.0,
                      child: FaIcon(FontAwesomeIcons.facebookF,
                          color: Colors.white),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 22,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[300],
                      elevation: 4.0,
                      child:
                          FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
