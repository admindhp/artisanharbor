import 'package:artisanharbour/screens/Contactus.dart';
import 'package:artisanharbour/screens/EmailSUpport.dart';
import 'package:artisanharbour/screens/FAQ.dart';
import 'package:artisanharbour/screens/Feedback.dart';
import 'package:flutter/material.dart';

class HelpFeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Feedback'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.help),
            title: Text('FAQ'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FAQPage()
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email Support'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EmailSupportPage()
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ContactUsPage()
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Feedback'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FeedbackPage()
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
