import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: Stack(
          fit: StackFit.expand,
          overflow: Overflow.visible,
          children: [
            Container(
              color: Color(0xFFE7DED8),
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.grey[400],
                child: Text(
                  'IH',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text(
                  'Imran Hajiyev',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 3.3,
              right: 30,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: ListTile(
                            onTap: () {},
                            leading: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: FaIcon(
                                FontAwesomeIcons.mapMarkerAlt,
                                color: Colors.grey[400],
                              ),
                            ),
                            title: Text(
                              'My Address',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: FaIcon(
                                FontAwesomeIcons.chevronRight,
                                size: 18,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: ListTile(
                            onTap: () {},
                            leading: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: FaIcon(
                                FontAwesomeIcons.solidUser,
                                color: Colors.grey[400],
                              ),
                            ),
                            title: Text('Account',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: FaIcon(
                                FontAwesomeIcons.chevronRight,
                                size: 18,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: ListTile(
                            onTap: () {},
                            leading: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: FaIcon(
                                FontAwesomeIcons.key,
                                color: Colors.grey[400],
                              ),
                            ),
                            title: Text(
                              'Passwords',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: FaIcon(
                                FontAwesomeIcons.chevronRight,
                                size: 18,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(
                          onTap: () {},
                          leading: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: FaIcon(
                              FontAwesomeIcons.globe,
                              color: Colors.grey[400],
                            ),
                          ),
                          title: Text(
                            'Language',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          trailing: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: FaIcon(
                              FontAwesomeIcons.chevronRight,
                              size: 18,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: ListTile(
                            onTap: () {},
                            leading: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: FaIcon(
                                FontAwesomeIcons.solidHandshake,
                                color: Colors.grey[400],
                              ),
                            ),
                            title: Text(
                              'User Agreement',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: FaIcon(
                                FontAwesomeIcons.chevronRight,
                                size: 18,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
