import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'checkoutPage.dart';

class ShoppingPage extends StatefulWidget {
  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  // variables for controller
  final TextEditingController _promoController = TextEditingController();

  // temporary variable
  List<Map> bagItems = [
    {
      'image': 'https://source.unsplash.com/ZhA9vZQPTeE',
      'itemName': 'Honey',
      'itemPrice': 7,
      'itemQuantity': 1
    },
    {
      'image': 'https://source.unsplash.com/PMOoaWCqX_Q',
      'itemName': 'Some Chocolate',
      'itemPrice': 2,
      'itemQuantity': 1
    },
    {
      'image': 'https://source.unsplash.com/IgGFNg-xPJs',
      'itemName': 'Orange Juice',
      'itemPrice': 4,
      'itemQuantity': 2
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'My Bag',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: FaIcon(FontAwesomeIcons.times),
            ),
          ),
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ListView.separated(
            itemCount: bagItems.length,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                height: 0,
                indent: 15,
                endIndent: 15,
                color: Colors.grey[400],
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 40),
                      child:
                          FaIcon(FontAwesomeIcons.trash, color: Colors.white),
                    ),
                  ),
                ),
                key: Key(bagItems[index]['itemName']),
                onDismissed: (direction) {
                  setState(() {
                    bagItems.removeAt(index);
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: ListTile(
                    leading: SizedBox(
                        width: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(bagItems[index]['image'],
                              fit: BoxFit.cover, width: double.infinity),
                        )),
                    title: Text(bagItems[index]['itemName'],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      '₼ ' + bagItems[index]['itemPrice'].toStringAsFixed(2),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(40)),
                      width: 90,
                      height: 30,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (bagItems[index]['itemQuantity'] > 1) {
                                  bagItems[index]['itemQuantity']--;
                                }
                              });
                            },
                            child: Text(
                              '-',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(bagItems[index]['itemQuantity'].toString(),
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bagItems[index]['itemQuantity']++;
                              });
                            },
                            child: Text(
                              '+',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height / 3.5,
            color: Colors.grey[100],
            padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height / 90),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Promo code',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4,
                          child: TextField(
                            controller: _promoController,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration.collapsed(
                              hintText: 'Enter the code',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () => _promoController.clear(),
                            child: FaIcon(
                              FontAwesomeIcons.solidTimesCircle,
                              color: Colors.grey,
                            ))
                      ]),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 90),
                Divider(
                  color: Colors.grey[400],
                  indent: 10,
                  endIndent: 10,
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 90),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Total amount',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text('₼ ' + 12.toStringAsFixed(2),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 22.4),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 22,
                  width: MediaQuery.of(context).size.width / 1.15,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutPage()));
                    },
                    color: Colors.black,
                    elevation: 4.0,
                    child: Text(
                      'Checkout',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0)),
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}
