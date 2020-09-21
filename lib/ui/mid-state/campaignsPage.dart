import 'package:flutter/material.dart';

final List<Map> _campaigns = [
  {
    "title": "Summer Sales",
    "description": "Up to 20% off",
    "image": "https://source.unsplash.com/xadg_h62oG8",
  },
  {
    "title": "Weekend Bonuses",
    "description": "Get one free product",
    "image": "https://source.unsplash.com/5ui0tfMC5ts",
  },
  {
    "title": "It's Tea Time",
    "description": "Buy 2 for the price of 1",
    "image": "https://source.unsplash.com/HecTZQSIvu4",
  },
  {
    "title": "Shopify Red",
    "description": "Donate to children with cancer",
    "image": "https://source.unsplash.com/3TuIIkWlpvA",
  },
  {
    "title": "Connect via Facebook",
    "description": "Get one shopping for free",
    "image": "https://source.unsplash.com/I6wCDYW6ij8",
  },
];

class CampaignsPage extends StatefulWidget {
  @override
  _CampaignsPageState createState() => _CampaignsPageState();
}

class _CampaignsPageState extends State<CampaignsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: _campaigns.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: GestureDetector(
              onTap: () {
                print('campaign clicked');
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                width: double.infinity,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(_campaigns[index]['image'],
                          fit: BoxFit.cover, width: double.infinity),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          _campaigns[index]['title'],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          _campaigns[index]['description']
                              .toString()
                              .toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
