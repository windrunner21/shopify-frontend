import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../additionals/detailsPage.dart';
import '../additionals/shippingPage.dart';
import '../additionals/campaignPage.dart';

class ItemPage extends StatefulWidget {
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  // variable for hearted item
  bool isHearted = false;
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Text(
            "Bakery",
            style: TextStyle(fontSize: 18),
          ),
        ),
        titleSpacing: -10,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.heart),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.shoppingBasket),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.only(top: 15),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.5, color: Colors.grey[200]))),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Some Bread',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('₼ ' + 0.75.toStringAsFixed(2),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
            child: Stack(
              children: [
                Image.network('https://source.unsplash.com/rYOqbTcGp1c',
                    fit: BoxFit.cover, width: double.infinity),
                Positioned(
                    top: 30,
                    right: 30,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isHearted = !isHearted;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          size: 12,
                          color: isHearted ? Colors.red : Colors.grey,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(children: [
                TabBar(
                  labelPadding: EdgeInsets.all(5),
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
                  tabs: [
                    Tab(text: 'Details'),
                    Tab(text: 'Shipping'),
                    Tab(text: 'Campaign'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      DetailsPage(),
                      ShippingPage(),
                      CampaignPage(),
                    ],
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
      bottomSheet: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(width: 0.5, color: Colors.grey[200]),
            ),
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_quantity > 0) {
                                _quantity--;
                              }
                            });
                          },
                          child: Text(
                            '-',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(_quantity.toString(),
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500)),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _quantity++;
                            });
                          },
                          child: Text(
                            '+',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.black,
                  child: FaIcon(
                    FontAwesomeIcons.shoppingBag,
                    color: Colors.white,
                    size: 16,
                  ),
                  padding: EdgeInsets.all(20.0),
                  shape: CircleBorder(),
                )
              ])),
    );
  }
}
