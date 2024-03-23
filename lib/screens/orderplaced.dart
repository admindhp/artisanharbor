import 'package:flutter/material.dart';
import 'package:artisanharbour/screens/HomeScreen.dart';
import 'package:artisanharbour/screens/HomeScreenWrapper.dart';

class OrderPlacedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate to HomeScreenWrapper when pressing back button
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreenWrapper(),
          ),
        );
        // Prevent back navigation
        return false;
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100,
              ),
              SizedBox(height: 20),
              Text(
                'Your order has been successfully placed!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement navigation to home page or any other page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreenWrapper(),
                    ),
                  );
                },
                child: Text('Continue Shopping'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
