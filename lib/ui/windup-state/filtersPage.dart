import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// brands list
final List<Map> _brands = [
  {
    'brandName': 'Academy',
    'isSelected': false,
  },
  {
    'brandName': 'Axe Capital',
    'isSelected': false,
  },
  {
    'brandName': 'Bonnie',
    'isSelected': false,
  },
  {
    'brandName': 'Babby',
    'isSelected': false,
  },
  {
    'brandName': 'Doneto',
    'isSelected': false,
  },
  {
    'brandName': 'Ferrero',
    'isSelected': false,
  },
];

class FiltersPage extends StatefulWidget {
  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  // variable holding ranged slider values
  var selectedRange = RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // filters title
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Filters',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 40),
          // price range title
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Price Range',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 15),
          // slider values
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '₼ ' + selectedRange.start.toStringAsFixed(0),
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '₼ ' + selectedRange.end.toStringAsFixed(0),
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // slider itself
          SliderTheme(
            data: SliderThemeData(
              inactiveTrackColor: Colors.grey[400],
              activeTrackColor: Colors.black,
              thumbColor: Colors.black,
              overlayColor: Colors.white,
              overlayShape: RoundSliderOverlayShape(overlayRadius: 16),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RangeSlider(
                values: selectedRange,
                onChanged: (RangeValues newRange) {
                  setState(() => selectedRange = newRange);
                },
                min: 0,
                max: 100,
              ),
            ),
          ),
          SizedBox(height: 40),
          // brands title
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Brands',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      for (var brand in _brands) {
                        setState(() {
                          brand['isSelected'] = !brand['isSelected'];
                        });
                      }
                    },
                    child: Text(
                      'Select all',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ]),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      indent: 15,
                      endIndent: 15,
                    );
                  },
                  itemCount: _brands.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _brands[index]['isSelected']
                        ? ListTile(
                            contentPadding:
                                EdgeInsets.only(top: 10, bottom: 10, left: 15),
                            onTap: () {
                              setState(() {
                                _brands[index]['isSelected'] = false;
                              });
                            },
                            title: Text(
                              _brands[index]['brandName'],
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: FaIcon(
                                FontAwesomeIcons.check,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          )
                        : ListTile(
                            onTap: () {
                              setState(() {
                                _brands[index]['isSelected'] = true;
                              });
                            },
                            title: Text(_brands[index]['brandName'],
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)),
                          );
                  }),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 22,
                width: MediaQuery.of(context).size.width / 2.5,
                child: OutlineButton(
                  onPressed: () {},
                  color: Colors.white,
                  borderSide: BorderSide(width: 2),
                  child: Text(
                    'Clear',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 22,
                width: MediaQuery.of(context).size.width / 2.5,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.black,
                  elevation: 4,
                  child: Text(
                    'Apply',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                ),
              ),
            ]),
      ),
    );
  }
}
