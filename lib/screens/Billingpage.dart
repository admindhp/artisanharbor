import 'package:artisanharbour/models/product_model.dart';
import 'package:artisanharbour/screens/Checkout.dart';
import 'package:artisanharbour/screens/Payment.dart';
import 'package:flutter/material.dart';

class BillingPage extends StatefulWidget {
  @override
  _BillingPageState createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  String _selectedPaymentMethod = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
          child: Form(
            key: _formKey,
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _phoneNumberController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
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
                buildPaymentOption('UPI'),
                buildPaymentOption('Credit/Debit Card'),
                buildPaymentOption('Cash On Delivery'),
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
                    // Validate form before proceeding
                    if (_formKey.currentState!.validate()) {
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
                    }
                  },
                  child: Text('Proceed to Checkout'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPaymentOption(String title) {
    return ListTile(
      title: Text(title),
      leading: Radio(
        value: title,
        groupValue: _selectedPaymentMethod,
        onChanged: (value) {
          setState(() {
            _selectedPaymentMethod = value as String;
            if (_selectedPaymentMethod == 'UPI') {
              if (_formKey.currentState!.validate()) {
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
                    builder: (context) => DummyPaymentScreen(
                      billingDetails: billingDetails,
                      harborPoints: _harborPointsController.text,
                    ),
                  ),
                );
              }

            }
          });
        },
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

