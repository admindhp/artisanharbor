import 'package:artisanharbour/models/product_model.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.withOpacity(0.5),
        elevation: 0,
        title: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(vertical: 15),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Add filter functionality
            },
            icon: Icon(Icons.filter_list),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: cart.length, // Example count of search results
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orangeAccent[100],
              child: Icon(Icons.shopping_cart),
            ),
            title: Text('${cart[index].name}'),
            subtitle: Text('${cart[index].price}'),
            onTap: () {
              // Add functionality to navigate to product details page
            },
          );
        },
      ),
    );
  }
}
