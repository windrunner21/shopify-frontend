import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../windup-state/itemPage.dart';

// app bar recomendations
final List<String> imgList = [
  'https://source.unsplash.com/xnqHqsauavA',
  'https://source.unsplash.com/59Kh3TAajg0',
  'https://source.unsplash.com/E7Yon4dZvek',
  'https://source.unsplash.com/leOh1CzRZVQ',
];

final List<String> titles = [
  'Summer Sales',
  'Summer Sales',
  'From us to you',
  'From us to you',
];

final List<String> percentages = [
  '20% off',
  '10% off',
  '15% off',
  '80% off',
];

final List<String> descriptions = [
  'For Selected Sweets Products',
  'For All Tea Products',
  'For Selected Honey Brands',
  'For All Country Made Eggs',
];

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

final List<Map> recently = [
  {
    "title": "Some Chocolate",
    "price": 2,
    "isNew": true,
    "isHearted": true,
    "image": "https://source.unsplash.com/PMOoaWCqX_Q"
  },
];

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // recomendations title, percentage and description
  String title = 'Summer Sales';
  String percentage = '20% off';
  String description = 'For Selected Sweets Products';

  // current carousel index
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // top view with some campaigns
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
            child: Stack(
              children: [
                // recomendation sales carousel
                Container(
                    width: double.infinity,
                    child: CarouselSlider(
                        options: CarouselOptions(
                            height: MediaQuery.of(context).size.height / 2.5,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                                title = titles[index];
                                percentage = percentages[index];
                                description = descriptions[index];
                              });
                            }),
                        items: imgList
                            .map((item) => Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ))
                            .toList())),
                // title of sales
                Positioned(
                  top: 115,
                  left: MediaQuery.of(context).size.width / 16.56,
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      title.toUpperCase(),
                      style: TextStyle(color: Colors.white, letterSpacing: 1),
                    ),
                  ),
                ),
                // sales % off
                Positioned(
                  top: 150,
                  left: MediaQuery.of(context).size.width / 16.56,
                  child: SizedBox(
                    child: Text(
                      percentage.toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                // description of sales
                Positioned(
                  bottom: 115,
                  left: MediaQuery.of(context).size.width / 16.56,
                  child: SizedBox(
                    child: Text(
                      description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                // button
                Positioned(
                  bottom: MediaQuery.of(context).size.width / 16.56,
                  right: MediaQuery.of(context).size.width / 16.56,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: RaisedButton(
                      onPressed: () {
                        print(MediaQuery.of(context).size.height / 40);
                      },
                      color: Colors.grey[900],
                      elevation: 4.0,
                      child: Text('Shop now',
                          style: TextStyle(color: Colors.white)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0)),
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.width / 16.56,
                  left: MediaQuery.of(context).size.width / 16.56,
                  child: DotsIndicator(
                    dotsCount: imgList.length,
                    position: _currentIndex.toDouble(),
                    decorator: DotsDecorator(
                      color: Colors.white, // Inactive color
                      activeColor: Colors.black54,
                      activeSize: Size(24.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // list view of categories
          Expanded(
            child: ListView(padding: EdgeInsets.all(0), children: [
              // fresh arrivals
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Fresh Arrivals',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Show All Tapped');
                      },
                      child: Text(
                        'Show all',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              // list view of FRESH ARRIVALS
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: fresh.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.height / 5.6,
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
                                      height:
                                          MediaQuery.of(context).size.height /
                                              5.12,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              fresh[index]['image'],
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                            ),
                                          ),
                                          Positioned(
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  60,
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  60,
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    fresh[index]['isHearted'] =
                                                        !fresh[index]
                                                            ['isHearted'];
                                                  });
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: FaIcon(
                                                    FontAwesomeIcons.solidHeart,
                                                    size: 12,
                                                    color: fresh[index]
                                                            ['isHearted']
                                                        ? Colors.red
                                                        : Colors.grey,
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                            visible: fresh[index]['isNew'],
                                            child: Positioned(
                                              bottom: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  179.2,
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  60,
                                              child: Chip(
                                                backgroundColor: Colors.white,
                                                label: Text(
                                                  'New',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500),
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
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 2.5),
                                    // price
                                    Text(
                                      '₼ ' +
                                          fresh[index]['price']
                                              .toStringAsFixed(2),
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        })),
              ),
              SizedBox(height: 20),
              // top trends
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Top Trends',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Show All Tapped');
                      },
                      child: Text(
                        'Show all',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              // list view of TOP TRENDS
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: fresh.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ItemPage()));
                            },
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 12,
                              width: MediaQuery.of(context).size.height / 2.75,
                              child: Row(children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    fresh[index]['image'],
                                    fit: BoxFit.cover,
                                    width:
                                        MediaQuery.of(context).size.height / 12,
                                    height:
                                        MediaQuery.of(context).size.height / 12,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(fresh[index]['title'],
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        '₼ ' +
                                            fresh[index]['price']
                                                .toStringAsFixed(2),
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(height: 20),
              // recently ordered
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Recently Ordered',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Show All Tapped');
                      },
                      child: Text(
                        'Show all',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              // list view of RECENTLY ORDEREd
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: recently.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.height / 5.6,
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
                                      height:
                                          MediaQuery.of(context).size.height /
                                              5.12,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              recently[index]['image'],
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                            ),
                                          ),
                                          Positioned(
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  60,
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  60,
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    recently[index]
                                                            ['isHearted'] =
                                                        !recently[index]
                                                            ['isHearted'];
                                                  });
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: FaIcon(
                                                    FontAwesomeIcons.solidHeart,
                                                    size: 12,
                                                    color: recently[index]
                                                            ['isHearted']
                                                        ? Colors.red
                                                        : Colors.grey,
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                            visible: recently[index]['isNew'],
                                            child: Positioned(
                                              bottom: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  179.2,
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  60,
                                              child: Chip(
                                                backgroundColor: Colors.white,
                                                label: Text(
                                                  'New',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500),
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
                                      recently[index]['title'],
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 2.5),
                                    // price
                                    Text(
                                      '₼ ' +
                                          recently[index]['price']
                                              .toStringAsFixed(2),
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        })),
              ),
              SizedBox(height: 20)
            ]),
          ),
        ],
      ),
    );
  }
}
