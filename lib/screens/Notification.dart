import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'), // Amazon-like color
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('New Arrival Deals'),
            subtitle: Text('Get notified about new arrival deals'),
            trailing: IconButton(
              icon: Icon(Icons.toggle_off),
              onPressed: () {
                // Handle turning off notifications for this item
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Order Updates'),
            subtitle: Text('Receive updates about your orders'),
            trailing: IconButton(
              icon: Icon(Icons.toggle_on),
              onPressed: () {
                // Handle turning on notifications for this item
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Promotions'),
            subtitle: Text('Stay updated on promotions and discounts'),
            trailing: IconButton(
              icon: Icon(Icons.toggle_off),
              onPressed: () {
                // Handle turning off notifications for this item
              },
            ),
          ),
          Divider(),
          // Add more notification options as needed
        ],
      ),
    );
  }
}
