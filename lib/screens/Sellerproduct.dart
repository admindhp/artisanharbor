import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class ProductsPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      imageUrl: 'assets/images/mxmaster.jpg',
      name: 'Ancient JUG',
      price: 79.95,
      description:
      'This ancient jug features intricate designs and exquisite craftsmanship. Perfect for adding a touch of history to your decor',
    ),
    Product(
      imageUrl: 'assets/images/blueyeti.jpg',
      name: 'Ancient Jewels',
      price: 109.99,
      description:
      'Discover the allure of ancient jewels with this stunning piece. Crafted with meticulous detail, it exudes elegance and charm',
    ),
    Product(
      imageUrl: 'assets/images/macbookpro.jpg',
      name: 'Ancient Knife',
      price: 1199.99,
      description:
      'Uncover the legacy of ancient knives with this exceptional piece. Its superior quality and timeless design make it a must-have for collectors and enthusiasts alike.',
    ),
    Product(
      imageUrl: 'assets/images/keyboard.jpg',
      name: 'Ancient Pots',
      price: 88.99,
      description:
      'Transport yourself to ancient times with these exquisite pots. Their rustic beauty and sturdy construction make them ideal for both display and everyday use.',
    ),
    Product(
      imageUrl: 'assets/images/jbl.jpg',
      name: 'Ancient Paintings',
      price: 99.95,
      description:
      'Delve into the world of ancient art with these captivating paintings. Each stroke tells a story, making them a captivating addition to any space.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return _buildProductCard(products[index]);
        },
      ),
    );
  }

  Widget _buildProductCard(Product product) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(
          product.imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(product.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4),
            Text(product.description),
            SizedBox(height: 4),
            Text('\$${product.price.toStringAsFixed(2)}',style: TextStyle(fontWeight: FontWeight.bold),), // Format price with 2 decimal places
          ],
        ),
        onTap: () {
          // Handle product tap
          // Navigate to product details page or perform other actions
        },
      ),
    );
  }
}

