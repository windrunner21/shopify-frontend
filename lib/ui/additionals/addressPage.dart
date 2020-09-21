import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  // key to check the shipping form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // dropdown value default
  String cityDropdownValue = 'Baku';
  String shippingDropdownValue = 'Standart Shipping (Free)';

  // checkbox value
  bool _saveInfo = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                'Shipping',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 20),
                  // full name
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },
                      textCapitalization: TextCapitalization.words,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        labelText: 'Full Name',
                        labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // address
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                      textCapitalization: TextCapitalization.words,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        labelText: 'Address',
                        labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  // city and zip code
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                labelText: 'City',
                                labelStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                              value: cityDropdownValue,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                              icon: Icon(Icons.expand_more),
                              onChanged: (String newValue) {
                                setState(() {
                                  cityDropdownValue = newValue;
                                });
                              },
                              items: <String>[
                                'Baku',
                                'Ganja',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: TextFormField(
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter your zip code';
                                }
                                return null;
                              },
                              textCapitalization: TextCapitalization.words,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54),
                                ),
                                labelText: 'Zip Code',
                                labelStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(height: 15),
                  // shipping method
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Shipping Method',
                        labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      value: shippingDropdownValue,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                      icon: Icon(Icons.expand_more),
                      onChanged: (String newValue) {
                        setState(() {
                          shippingDropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        'Standart Shipping (Free)',
                        'Express Shipping (+ ₼ 5.00)',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 15),
                  // save information for later
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: CheckboxListTile(
                      title: Transform(
                          transform: Matrix4.translationValues(-16, 0.0, 0.0),
                          child: Text(
                            'Save for faster checkout next time',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          )),
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.all(0),
                      value: _saveInfo,
                      onChanged: (bool value) {
                        setState(() {
                          _saveInfo = value;
                        });
                      },
                      activeColor: Colors.black,
                    ),
                  ),
                ],
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
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        print('validated shipping');
                        _settingModalBottomSheet(context);
                      }
                    },
                    color: Colors.black,
                    elevation: 4.0,
                    child: Text(
                      'Continue to Payment',
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
      ),
    );
  }

  // modal bottom sheet
  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        ),
        builder: (BuildContext context) {
          return Wrap(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 40, 30, 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Choose Your',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Payment Method',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Total Amount',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '₼ ' + 12.toStringAsFixed(2),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    SizedBox(height: 20),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 22,
                          width: MediaQuery.of(context).size.width / 1.15,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.black,
                            elevation: 4.0,
                            child: Text(
                              'Credit Card',
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0)),
                          ),
                        )),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 22,
                        width: MediaQuery.of(context).size.width / 1.15,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.black,
                          elevation: 4.0,
                          child: Text(
                            'Pay with Cash',
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
