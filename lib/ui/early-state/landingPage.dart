import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'loginPage.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1550989460-0adf9ea622e2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9',
  'https://images.unsplash.com/photo-1580440282860-8555b1ae102c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9',
  'https://images.unsplash.com/photo-1571715268998-d6e79bed5fc9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9',
  'https://images.unsplash.com/photo-1551655510-555dc3be8633?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjF9',
];

final List<String> titles = [
  'Swipe to browse',
  'Add to cart',
  'Simple payment',
  'Fastest delivery',
];

final List<String> descriptions = [
  'Discover products easily by swiping from one category to another',
  'Add products you want to buy into your shopping cart',
  'Pay for the products online via secure channels',
  'Products will arrive by your door in 15 to 20 minutes',
];

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // image title and description
  String title = 'Swipe to browse';
  String description =
      'Discover products easily by swiping from one category to another';

  // current carousel index
  int _currentIndex = 0;

  // image slides
  final List<Widget> imageSliders = imgList
      .map(
        (item) => Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child:
                Image.network(item, fit: BoxFit.cover, width: double.infinity),
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 1.0,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                          title = titles[index];
                          description = descriptions[index];
                        });
                      }),
                  items: imageSliders,
                ),
                SizedBox(height: 20),
                DotsIndicator(
                  dotsCount: imgList.length,
                  position: _currentIndex.toDouble(),
                  decorator: DotsDecorator(
                    color: Colors.grey, // Inactive color
                    activeColor: Colors.black87,
                    activeSize: Size(24.0, 8.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 22,
              width: MediaQuery.of(context).size.width / 1.15,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                color: Colors.black,
                elevation: 4.0,
                child: Text(
                  'Start Shopping',
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
