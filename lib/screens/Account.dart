import 'package:flutter/material.dart';

class AccountDetailsPage extends StatefulWidget {
  @override
  _AccountDetailsPageState createState() => _AccountDetailsPageState();
}

class _AccountDetailsPageState extends State<AccountDetailsPage> {
  bool _isEditing = false;
  TextEditingController _nameController = TextEditingController(text: 'John Doe');
  TextEditingController _emailController = TextEditingController(text: 'johndoe@example.com');
  TextEditingController _phoneController = TextEditingController(text: '+1234567890');
  TextEditingController _addressController = TextEditingController(text: '123 Main Street, City, Country');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Details'),
        backgroundColor: Colors.orange, // Amazon-like color
        actions: [
          IconButton(
            icon: Icon(_isEditing ? Icons.save : Icons.edit),
            onPressed: () {
              setState(() {
                _isEditing = !_isEditing;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildDetailRow('Full Name', _nameController, _isEditing),
            _buildDivider(),
            _buildDetailRow('Email Address', _emailController, _isEditing),
            _buildDivider(),
            _buildDetailRow('Phone Number', _phoneController, _isEditing),
            _buildDivider(),
            _buildDetailRow('Address', _addressController, _isEditing),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, TextEditingController controller, bool isEditing) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 8),
          isEditing
              ? TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            ),
          )
              : Text(
            controller.text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.grey[300],
      thickness: 1,
      height: 24,
    );
  }
}

