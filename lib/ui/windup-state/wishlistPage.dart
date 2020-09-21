import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../additionals/allWishPage.dart';
import '../additionals/catWishPage.dart';

class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Wish List',
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
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.grey[100],
              height: MediaQuery.of(context).size.height / 15,
              child: TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: 'All Items'),
                  Tab(text: 'By Category'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  AllItemsPage(),
                  ByCategoryPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
