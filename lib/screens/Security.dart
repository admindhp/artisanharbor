import 'package:artisanharbour/screens/Contactus.dart';
import 'package:flutter/material.dart';

class SecurityPrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Security & Privacy'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Security and Privacy',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              'We take the security and privacy of your information seriously. Here are some of the measures we take to protect your data:',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            _buildListItem(
              'Secure Transactions',
              'All transactions on our platform are encrypted to ensure your financial information remains secure.',
            ),
            _buildListItem(
              'Data Protection',
              'We implement industry-standard protocols to safeguard your personal information and prevent unauthorized access.',
            ),
            _buildListItem(
              'Privacy Policy',
              'Our privacy policy outlines how we collect, use, and protect your data. You can review it in detail on our website.',
            ),
            SizedBox(height: 20.0),
            Text(
              'For any concerns or inquiries about your security and privacy, please contact our support team.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContactUsPage()
                  ),
                );
              },
              child: Text('Contact Support'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,// Set button color to orange
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Set button border radius
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.0),
        Text(description),
        SizedBox(height: 10.0),
      ],
    );
  }
}