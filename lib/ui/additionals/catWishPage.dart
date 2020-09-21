import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ByCategoryPage extends StatefulWidget {
  @override
  _ByCategoryPageState createState() => _ByCategoryPageState();
}

class _ByCategoryPageState extends State<ByCategoryPage> {
  // temp list
  final List<Map> _categoriesWishList = [
    {
      "images": [
        "https://source.unsplash.com/WXJ33HOrzvE",
        "https://source.unsplash.com/FqB_Kj7PZa8",
        "https://source.unsplash.com/650rbdaEbPY",
        // "https://source.unsplash.com/q0a1lWVxtcw",
        // "https://source.unsplash.com/_XZM7Cibsb4",
        // "https://source.unsplash.com/_lGjRM5XVBQ",
      ],
      "category": "Sweets",
      "quantity": 3,
    },
    {
      "images": [
        "https://source.unsplash.com/DSxurmhrfuc",
        //"https://source.unsplash.com/03RUtFXdu1w",
      ],
      "category": "Beverages",
      "quantity": 1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ListView.separated(
        itemCount: _categoriesWishList.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.grey[400],
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            height: MediaQuery.of(context).size.height / 4,
            child: Column(
              children: <Widget>[
                // min 1 max 6 images for category
                // if 1 image available
                if (_categoriesWishList[index]['images'].length == 1)
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 6,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                _categoriesWishList[index]['images'][0])),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                // if 2 images available
                if (_categoriesWishList[index]['images'].length == 2)
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 6,
                    child: Row(children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  _categoriesWishList[index]['images'][0])),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  _categoriesWishList[index]['images'][1])),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      )),
                    ]),
                  ),
                // if 3 images
                if (_categoriesWishList[index]['images'].length == 3)
                  IntrinsicHeight(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      _categoriesWishList[index]['images'][0])),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Column(children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 12,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          _categoriesWishList[index]['images']
                                              [1])),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                height: MediaQuery.of(context).size.height / 12,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          _categoriesWishList[index]['images']
                                              [2])),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ]),
                  ),
                // if 4 images
                if (_categoriesWishList[index]['images'].length == 4)
                  IntrinsicHeight(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    _categoriesWishList[index]['images'][0]),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      _categoriesWishList[index]['images'][1]),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Column(children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 14,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        _categoriesWishList[index]['images']
                                            [2]),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                height:
                                    2 * MediaQuery.of(context).size.height / 21,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        _categoriesWishList[index]['images']
                                            [3]),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ]),
                  ),
                // if 5 images
                if (_categoriesWishList[index]['images'].length == 5)
                  IntrinsicHeight(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    _categoriesWishList[index]['images'][0]),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                              child: Column(children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 18,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      _categoriesWishList[index]['images'][1]),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: MediaQuery.of(context).size.height / 9,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      _categoriesWishList[index]['images'][2]),
                                ),
                              ),
                            ),
                          ])),
                          SizedBox(width: 5),
                          Expanded(
                            child: Column(children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 9,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        _categoriesWishList[index]['images']
                                            [3]),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                height: MediaQuery.of(context).size.height / 18,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          _categoriesWishList[index]['images']
                                              [4])),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ]),
                  ),
                // if 6 images
                if (_categoriesWishList[index]['images'].length == 6)
                  IntrinsicHeight(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      _categoriesWishList[index]['images'][0])),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      _categoriesWishList[index]['images'][1])),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                              child: Column(children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 14,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        _categoriesWishList[index]['images']
                                            [2])),
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height:
                                  2 * MediaQuery.of(context).size.height / 21,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        _categoriesWishList[index]['images']
                                            [3])),
                              ),
                            ),
                          ])),
                          SizedBox(width: 5),
                          Expanded(
                            child: Column(children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 9,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          _categoriesWishList[index]['images']
                                              [4])),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                height: MediaQuery.of(context).size.height / 18,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          _categoriesWishList[index]['images']
                                              [5])),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ]),
                  ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            _categoriesWishList[index]['category'],
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            _categoriesWishList[index]['quantity'].toString() +
                                ' items',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      FaIcon(FontAwesomeIcons.chevronRight,
                          size: 20, color: Colors.grey)
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
