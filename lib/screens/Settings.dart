import 'package:artisanharbour/screens/Account.dart';
import 'package:artisanharbour/screens/Help.dart';
import 'package:artisanharbour/screens/Language.dart';
import 'package:artisanharbour/screens/Notification.dart';
import 'package:artisanharbour/screens/Security.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account Settings'),
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AccountDetailsPage()
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NotificationsPage()
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security & Privacy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecurityPrivacyPage()
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language & Region'),
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LanguageRegionPage()
                ),
              );
              // Navigate to language settings page
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help & Feedback'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HelpFeedbackPage()
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {
              // Perform log out action
            },
          ),
        ],
      ),
    );
  }
}
