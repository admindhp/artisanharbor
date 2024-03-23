import 'package:artisanharbour/screens/orderplaced.dart';
import 'package:flutter/material.dart';
import 'package:artisanharbour/screens/HomeScreen.dart';

class HomeScreenWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate to OrderPlacedPage when pressing back button
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderPlacedPage(),
          ),
        );
        // Prevent back navigation
        return false;
      },
      child: HomeScreen(),
    );
  }
}
