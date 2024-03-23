import 'package:artisanharbour/screens/Loginpage.dart';
import 'package:artisanharbour/screens/Seller.dart';
import 'package:flutter/material.dart';

class ChooseLoginTypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/amazon_logo.jpg', // Add your Amazon logo image
              height: 400,
              width: 200,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to seller login page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SellerLogin(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Amazon's orange color
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Seller Login',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to merchant login page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Amazon's orange color
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Merchant Login',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



