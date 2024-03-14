import 'package:artisanharbour/models/product_model.dart';
import 'package:artisanharbour/screens/Checkout.dart';
import 'package:flutter/material.dart';


class BillingPage extends StatefulWidget {
  @override
  _BillingPageState createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  String _selectedPaymentMethod = '';
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _harborPointsController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _phoneNumberController.dispose();
    _harborPointsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Billing Information'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Enter Billing Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Select Payment Method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Radio options for payment methods
              ListTile(
                title: Text('Google Pay'),
                leading: Radio(
                  value: 'Google Pay',
                  groupValue: _selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentMethod = value as String;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('PhonePe'),
                leading: Radio(
                  value: 'PhonePe',
                  groupValue: _selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentMethod = value as String;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Credit/Debit Card'),
                leading: Radio(
                  value: 'Credit/Debit Card',
                  groupValue: _selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentMethod = value as String;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Cash On Delivery'),
                leading: Radio(
                  value: 'Cash On Delivery',
                  groupValue: _selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentMethod = value as String;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _harborPointsController,
                decoration: InputDecoration(
                  labelText: 'Harbor Points (if any)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Prepare billing details
                  final billingDetails = BillingDetails(
                    name: _nameController.text,
                    address: _addressController.text,
                    phoneNumber: _phoneNumberController.text,
                  );
        
                  // Navigate to checkout page with billing details and other data
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutPage(
                        billingDetails: billingDetails,
                        paymentMethod: _selectedPaymentMethod,
                        harborPoints: _harborPointsController.text,
                        products: cart,
                      ),
                    ),
                  );
                },
                child: Text('Proceed to Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BillingDetails {
  final String name;
  final String address;
  final String phoneNumber;

  BillingDetails({
    required this.name,
    required this.address,
    required this.phoneNumber,
  });
}
