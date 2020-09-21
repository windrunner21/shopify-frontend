import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'filtersPage.dart';
import 'itemPage.dart';

// catalog
final List<Map> fresh = [
  {
    "title": "Some Chocolate",
    "price": 2,
    "isNew": true,
    "isHearted": true,
    "image": "https://source.unsplash.com/PMOoaWCqX_Q"
  },
  {
    "title": "Orange Juice",
    "price": 4,
    "isNew": false,
    "isHearted": false,
    "image": "https://source.unsplash.com/IgGFNg-xPJs"
  },
  {
    "title": "Honey",
    "price": 7,
    "isNew": false,
    "isHearted": false,
    "image": "https://source.unsplash.com/ZhA9vZQPTeE"
  },
  {
    "title": "Some Chocolate",
    "price": 2,
    "isNew": false,
    "isHearted": false,
    "image": "https://source.unsplash.com/PMOoaWCqX_Q"
  },
  {
    "title": "Orange Juice",
    "price": 4,
    "isNew": true,
    "isHearted": false,
    "image": "https://source.unsplash.com/IgGFNg-xPJs"
  },
  {
    "title": "Honey",
    "price": 7,
    "isNew": false,
    "isHearted": false,
    "image": "https://source.unsplash.com/ZhA9vZQPTeE"
  },
];

class CatalogPage extends StatefulWidget {
  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  // changing categories
  int _categoryIndex = 0;

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
            "Back",
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
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: Stack(
              children: [
                Image.network('https://source.unsplash.com/NYRuUS8iNWc',
                    fit: BoxFit.cover, width: double.infinity),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Bakery',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 20, right: 15, bottom: 15),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Bread',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text(7734.toString() + ' products found',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500))
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FiltersPage()));
                    },
                    icon: FaIcon(FontAwesomeIcons.slidersH, color: Colors.grey),
                  )
                ]),
          ),
          Container(
            color: Colors.grey[100],
            height: MediaQuery.of(context).size.height / 18,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: _categoryIndex == 0
                      ? RaisedButton(
                          elevation: 0,
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              _categoryIndex = 0;
                            });
                          },
                          child: Text('Everything',
                              style: TextStyle(color: Colors.white)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0)),
                        )
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              _categoryIndex = 0;
                            });
                          },
                          child: Text('Everything',
                              style: TextStyle(color: Colors.grey[600])),
                        ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: _categoryIndex == 1
                      ? RaisedButton(
                          elevation: 0,
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              _categoryIndex = 1;
                            });
                          },
                          child: Text('Bread',
                              style: TextStyle(color: Colors.white)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0)),
                        )
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              _categoryIndex = 1;
                            });
                          },
                          child: Text('Bread',
                              style: TextStyle(color: Colors.grey[600])),
                        ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: _categoryIndex == 2
                      ? RaisedButton(
                          elevation: 0,
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              _categoryIndex = 2;
                            });
                          },
                          child: Text('Buns',
                              style: TextStyle(color: Colors.white)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0)),
                        )
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              _categoryIndex = 2;
                            });
                          },
                          child: Text('Buns',
                              style: TextStyle(color: Colors.grey[600])),
                        ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: _categoryIndex == 3
                      ? RaisedButton(
                          elevation: 0,
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              _categoryIndex = 3;
                            });
                          },
                          child: Text('Flour',
                              style: TextStyle(color: Colors.white)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0)),
                        )
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              _categoryIndex = 3;
                            });
                          },
                          child: Text('Flour',
                              style: TextStyle(color: Colors.grey[600])),
                        ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: _categoryIndex == 4
                      ? RaisedButton(
                          elevation: 0,
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              _categoryIndex = 4;
                            });
                          },
                          child: Text('Cookies',
                              style: TextStyle(color: Colors.white)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0)),
                        )
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              _categoryIndex = 4;
                            });
                          },
                          child: Text('Cookies',
                              style: TextStyle(color: Colors.grey[600])),
                        ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (3 / 4),
                  ),
                  itemCount: fresh.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemPage()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // image and more
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 4.5,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      fresh[index]['image'],
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                  Positioned(
                                      top: MediaQuery.of(context).size.height /
                                          60,
                                      right:
                                          MediaQuery.of(context).size.height /
                                              60,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            fresh[index]['isHearted'] =
                                                !fresh[index]['isHearted'];
                                          });
                                        },
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: FaIcon(
                                            FontAwesomeIcons.solidHeart,
                                            size: 12,
                                            color: fresh[index]['isHearted']
                                                ? Colors.red
                                                : Colors.grey,
                                          ),
                                        ),
                                      )),
                                  Visibility(
                                    visible: fresh[index]['isNew'],
                                    child: Positioned(
                                      bottom:
                                          MediaQuery.of(context).size.height /
                                              179.2,
                                      left: MediaQuery.of(context).size.height /
                                          60,
                                      child: Chip(
                                        backgroundColor: Colors.white,
                                        label: Text(
                                          'New',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7.5),
                            // title
                            Text(
                              fresh[index]['title'],
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 2.5),
                            // price
                            Text(
                              '₼ ' + fresh[index]['price'].toStringAsFixed(2),
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
