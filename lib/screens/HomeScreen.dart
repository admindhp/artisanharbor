import 'package:artisanharbour/screens/Aboutus.dart';
import 'package:artisanharbour/screens/CartScreen.dart';
import 'package:artisanharbour/screens/Mainpage.dart';
import 'package:artisanharbour/screens/Profilepage.dart';
import 'package:artisanharbour/screens/Searchpage.dart';
import 'package:artisanharbour/screens/Settings.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Index of the selected item in bottom navigation

  // List of pages corresponding to each item in bottom navigation
  final List<Widget> _pages = [
    Mainpage(),
    CartScreen(),
    MerchantProfilePage(),
  ];

  final List<String> _titles = [
    'Home',
    'Cart',
    'Profile'
  ];

  // Function to handle item selection in bottom navigation
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.withOpacity(0.5),
        elevation: 5.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: ImageIcon(
                AssetImage("assets/images/menu.jpg"),
                size: 100,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open drawer on icon press
              },
            );
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 0.0, top: 10),
          child: Center(
            child: Image(
              image: AssetImage("assets/images/amazon_logo.jpg"),
              height: 200,
            ),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: InkResponse(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              },
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orangeAccent.withOpacity(0.2),
              ),
              child: Center(
                child: Image(
                  image: AssetImage("assets/images/amazon_logo.jpg"),
                  height: 200,
                ),
              ),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage()
                  ),
                );
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AboutUsPage()
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 40, left: 20, right: 20), // Add margin to separate from bottom
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: GNav(
            rippleColor: Colors.amberAccent.withOpacity(0.6),
            hoverColor: Colors.grey,
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.black,
            color: Colors.black,
            tabs: [
              GButton(
                icon: Icons.home,
              ),
              GButton(
                icon: Icons.shopping_cart,
              ),
              GButton(
                icon: Icons.person,
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              _onItemTapped(index);
            },
          ),
        ),
      ),
    );
  }
}
