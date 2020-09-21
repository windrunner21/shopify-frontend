import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'shopPage.dart';
import 'explorePage.dart';
import 'campaignsPage.dart';
import 'profilePage.dart';
import '../windup-state/wishlistPage.dart';
import '../windup-state/shoppingPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // boolean for extending body behind appbar
  bool _shouldBeExtended = true;
  String _title = '';
  Color heartColor = Colors.white;
  Color bagColor = Colors.white;

  // controlling tabs on pressing
  TabController _tabController;

  // initializing the controller
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    _tabController.addListener(_handleTabSelection);
  }

  // handle on tab selection
  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      switch (_tabController.index) {
        case 0:
          setState(() {
            _shouldBeExtended = true;
            heartColor = Colors.white;
            bagColor = Colors.white;
            _title = '';
          });
          break;
        case 1:
          setState(() {
            _shouldBeExtended = false;
            heartColor = Colors.black;
            bagColor = Colors.black;
            _title = '';
          });
          break;
        case 2:
          setState(() {
            _shouldBeExtended = false;
            heartColor = Colors.black;
            bagColor = Colors.black;
            _title = 'Campaigns';
          });
          break;
        case 3:
          setState(() {
            _shouldBeExtended = true;
            heartColor = Colors.white;
            bagColor = Colors.white;
            _title = '';
          });
          break;
      }
    }
  }

  // disposing of controller
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: _shouldBeExtended,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            _title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WishlistPage()));
              },
              icon: FaIcon(FontAwesomeIcons.heart, color: heartColor),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShoppingPage()));
                },
                icon: FaIcon(
                  FontAwesomeIcons.shoppingBasket,
                  color: bagColor,
                ),
              ),
            ),
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            ShopPage(),
            ExplorePage(),
            CampaignsPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: Container(
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
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.fromLTRB(10, 0, 10, 25),
            indicator: BoxDecoration(),
            tabs: [
              Tab(
                icon: FaIcon(FontAwesomeIcons.shoppingCart),
                text: 'Shop',
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.solidEye),
                text: 'Explore',
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.bullhorn),
                text: 'Campaigns',
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.solidUserCircle),
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
