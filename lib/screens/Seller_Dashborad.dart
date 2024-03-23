import 'package:artisanharbour/screens/Aboutus.dart';
import 'package:artisanharbour/screens/Addproduct.dart';
import 'package:artisanharbour/screens/Reviewpage.dart';
import 'package:artisanharbour/screens/Settings.dart';
import 'package:flutter/material.dart';
import 'package:artisanharbour/screens/Sellerproduct.dart'; // Import SellerProductPage

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  MaterialPageRoute(builder: (context) => AddProductPage()),
                );
              },
              child: Icon(
                Icons.add_box_outlined,
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
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSquareCard(context, 'Products', '10'), // Replace '10' with actual number of products
          _buildSquareCard(context, 'Earnings', '\$1000'), // Replace '\$1000' with actual earnings
          _buildSquareCard(context, 'Ratings', '4.5'), // Replace '4.5' with actual average rating
          _buildSquareCard(context, 'Reviews', '5'), // Replace '5' with actual number of reviews
        ],
      ),
    );
  }

  Widget _buildSquareCard(BuildContext context, String title, String value) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {
          if (title == 'Products') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductsPage()),
            );
          }
          if (title == 'Reviews') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReviewPage()),
            );
          }
          // Add navigation for other cards if needed
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                value,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange, // Amazon's orange color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
