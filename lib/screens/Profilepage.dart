import 'package:artisanharbour/models/product_model.dart';
import 'package:flutter/material.dart';



class MerchantProfilePage extends StatefulWidget {
  @override
  _MerchantProfilePageState createState() => _MerchantProfilePageState();
}

class _MerchantProfilePageState extends State<MerchantProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    foregroundColor: Colors.black,
                    radius: 50.0,
                    child: Text(
                      'AM', // Initial letter of merchant's name
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Abdul Malik',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone,),
              title: Text('Phone Number'),
              subtitle: Text('+91 98765 43210'), // Replace with actual phone number
            ),
            ListTile(
              leading: Icon(Icons.location_on,),
              title: Text('Address'),
              subtitle: Text("123, Rajaji Street,Kamarajar Salai,Madurai,Tamil Nadu, India."), // Replace with actual address
            ),
            ListTile(
              leading: Icon(Icons.star,color: Colors.amber,),
              title: Text('Harbor Points'),
              subtitle: Text('1000'), // Replace with actual harbor points
            ),
            ExpansionTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Purchase History'),
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3, // Replace with actual count of purchase history items
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(cart[index].imageUrl), // Replace with actual product image
                      ),
                      title: Text(cart[index].name), // Replace with actual product name
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Rate: \$${cart[index].price.toStringAsFixed(2)}'), // Replace with actual product rate
                          Text('Delivered Date: 2024-03-${10 + index}'), // Replace with actual delivered date
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
