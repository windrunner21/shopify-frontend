import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../windup-state/catalogPage.dart';

// to be changed later
final List<String> _categories = [
  'Bakery',
  'Meat and Seafood',
  'Fruits and Vegetables',
  'Dairy',
  'Beverages',
  'Sweets',
  'Health and Beauty',
  'Cleaners'
];

final List<String> _categoriesDescription = [
  'Your favourite Flour Products',
  'Always Fresh',
  'Fresh and delicious  Hurry to get them',
  'Milk, Yogurt, Eggs, Cheese and Butter',
  'Water, Juice, Tea & Coffee',
  'Anything from Chocolates to Cakes',
  'Shampoo, Soap, Shaving Cream and more',
  'Help your home become clean'
];

final List<String> _categoriesPhotos = [
  'https://source.unsplash.com/bph0kUmAoXc',
  'https://source.unsplash.com/XgFFJKSPkNk',
  'https://source.unsplash.com/TQ-q5WAVHj0',
  'https://source.unsplash.com/_8bnn1GqX70',
  'https://source.unsplash.com/hOThghGqaoU',
  'https://source.unsplash.com/njqtZq0H3KA',
  'https://source.unsplash.com/QodV5ti37WA',
  'https://source.unsplash.com/uooMllXe6gE'
];
//

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // explore text
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Text('Explore',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            ),
          ),
          // search textfield
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: "Search",
                isDense: true,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: FaIcon(FontAwesomeIcons.search, color: Colors.black54),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  // speech to text detector
                  child: GestureDetector(
                    onTap: () {
                      print('speech to text pressed');
                    },
                    child: FaIcon(FontAwesomeIcons.microphone,
                        color: Colors.black54),
                  ),
                ),
              ),
            ),
          ),
          // categories to explore
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: ListView.builder(
                  itemCount: _categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height / 2.25,
                      child: Stack(
                        children: [
                          Image.network(_categoriesPhotos[index],
                              fit: BoxFit.cover, width: double.infinity),
                          // title
                          Positioned(
                            top: MediaQuery.of(context).size.width / 16.56,
                            left: MediaQuery.of(context).size.width / 16.56,
                            child: SizedBox(
                              width: 150,
                              child: Text(
                                _categories[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          // description
                          Positioned(
                            top: MediaQuery.of(context).size.width / 13.8,
                            right: MediaQuery.of(context).size.width / 16.56,
                            child: SizedBox(
                              width: 100,
                              child: Text(
                                _categoriesDescription[index],
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          // button
                          Positioned(
                            bottom: MediaQuery.of(context).size.width / 16.56,
                            left: MediaQuery.of(context).size.width / 16.56,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                              child: RaisedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CatalogPage()));
                                },
                                color: Colors.white,
                                elevation: 4.0,
                                icon: Text('Shop'),
                                label: FaIcon(FontAwesomeIcons.chevronRight,
                                    size: 12),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                            ),
                          )
                        ],
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
