import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../windup-state/filtersPage.dart';

final List<Map> _wishList = [
  {
    "title": "Some Chocolate",
    "price": 2,
    "image": "https://source.unsplash.com/PMOoaWCqX_Q"
  },
  {
    "title": "Orange Juice",
    "price": 4,
    "image": "https://source.unsplash.com/IgGFNg-xPJs"
  },
  {
    "title": "Honey",
    "price": 7,
    "image": "https://source.unsplash.com/ZhA9vZQPTeE"
  },
  {
    "title": "Some Chocolate",
    "price": 2,
    "image": "https://source.unsplash.com/PMOoaWCqX_Q"
  },
];

class AllItemsPage extends StatefulWidget {
  @override
  _AllItemsPageState createState() => _AllItemsPageState();
}

class _AllItemsPageState extends State<AllItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10, left: 20, right: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(4.toString() + ' products found',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500)),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FiltersPage()));
                },
                icon: FaIcon(FontAwesomeIcons.slidersH, color: Colors.grey),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: _wishList.length,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey[400],
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(top: 15, bottom: 15),
                height: MediaQuery.of(context).size.height / 5.5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(_wishList[index]['image'],
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width / 4),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _wishList[index]['title'],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '₼ ' + _wishList[index]['price'].toStringAsFixed(2),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        OutlineButton(
                          onPressed: () {
                            Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text(_wishList[index]['title'] +
                                    ' Moved to Bag')));
                          },
                          color: Colors.white,
                          borderSide: BorderSide(width: 2),
                          child: Text(
                            'Move to Bag',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0)),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
