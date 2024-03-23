import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  final String phoneNumber = '+919087035132'; // Replace with your phone number
  final String emailAddress = 'support@artisanharbour.com'; // Replace with your email address
  final String websiteUrl = 'https://www.artisanharbour.com'; // Replace with your website URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text(emailAddress),
            onTap: () {
              launch('mailto:$emailAddress');
            },
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text(phoneNumber),
            onTap: () {
              launch('tel:$phoneNumber');
            },
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Website'),
            subtitle: Text(websiteUrl),
            onTap: () {
              launch(websiteUrl);
            },
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
        ],
      ),
    );
  }
}
