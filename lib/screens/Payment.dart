import 'package:artisanharbour/models/product_model.dart';
import 'package:artisanharbour/screens/Billingpage.dart';
import 'package:artisanharbour/screens/Checkout.dart';
import 'package:flutter/material.dart';

class DummyPaymentScreen extends StatefulWidget {
  final BillingDetails billingDetails; // Update to accept BillingDetails object
  final String harborPoints;
  DummyPaymentScreen({
    required this.billingDetails, // Update to accept BillingDetails object
    required this.harborPoints,
  });
  @override
  _DummyPaymentScreenState createState() => _DummyPaymentScreenState();
}

class _DummyPaymentScreenState extends State<DummyPaymentScreen> {
  String _selectedPlatform = 'Google Pay'; // Default platform selection
  String _upiId = ''; // UPI ID entered by the user

  // List of available UPI platforms
  final List<String> _upiPlatforms = [
    'Google Pay',
    'PhonePe',
    'PayPal',
    'Paytm',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Total Amount: \$420.69', // Replace with your total amount
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: _selectedPlatform,
              onChanged: (newValue) {
                setState(() {
                  _selectedPlatform = newValue!;
                });
              },
              decoration: InputDecoration(
                labelText: 'Select UPI Platform',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.payment), // Payment icon
              ),
              items: _upiPlatforms.map((platform) {
                return DropdownMenuItem<String>(
                  value: platform,
                  child: Text(platform),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter UPI ID',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email), // Email icon
              ),
              onChanged: (value) {
                setState(() {
                  _upiId = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate payment process
                _simulatePayment(context);
              },
              child: Text('Proceed to Payment'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white// Amazon's orange color
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _simulatePayment(BuildContext context) {
    // Show payment confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Payment'),
          content: Text('Are you sure you want to proceed with the payment?'),
          actions: [
            TextButton(
              onPressed: () {
                // Close dialog
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Simulate payment success
                Navigator.pop(context);
                _showPaymentResult(context, true);

              },
              child: Text('Confirm'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white
              ),
            ),
          ],
        );
      },
    );
  }

  void _showPaymentResult(BuildContext context, bool isSuccess) {
    // Show payment result
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: isSuccess ? Text('Payment Successful') : Text('Payment Failed'),
          content: isSuccess
              ? Text('Thank you for your payment!')
              : Text('Oops! Something went wrong. Please try again.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(
                      billingDetails: widget.billingDetails,
                      paymentMethod: _selectedPlatform,
                      harborPoints: widget.harborPoints,
                      products: cart,
                    ),
                  ),
                );

              },
              child: Text('OK'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white// Amazon's orange color
              ),
            ),
          ],
        );
      },
    );
  }
}

