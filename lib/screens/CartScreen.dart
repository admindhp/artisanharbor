import 'package:artisanharbour/models/product_model.dart';
import 'package:artisanharbour/screens/Billingpage.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  makeItem(int index) {
    return ListTile(
      contentPadding: EdgeInsets.all(20),
      leading: Image(
        image: AssetImage(cart[index].imageUrl),
        height: double.infinity,
        width: 100,
        fit: BoxFit.contain,
      ),
      title: Text(cart[index].name),
      subtitle: Text(
        "x1",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      trailing: Text(
          "\$${cart[index].price.toStringAsFixed(2)}",
          style: TextStyle(
              color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Shopping Cart (${cart.length})",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (ctx, index) {
          if (index < cart.length) {
            return makeItem(index);
          } else {
            return Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BillingPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  foregroundColor: Colors.white// Change button color to blue
                ),
                child: Text("PLACE ORDER (\$420.69)"),
              ),
            );
          }
        },
        separatorBuilder: (ctx, index) =>
            Divider(color: Colors.grey[300]),
        itemCount: cart.length + 1,
      ),
    );
  }
}
