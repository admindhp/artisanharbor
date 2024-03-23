import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.asset(
                'assets/images/amazon_logo.jpg', // Replace with your logo image
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to Artisan Harbor',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Artisan Harbor is your premier destination for discovering and acquiring authentic ancient artifacts and handcrafted items from diverse cultures around the globe. We pride ourselves on providing a curated selection of products sourced directly from skilled artisans, collectors, and verified sellers.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Our platform serves as a bridge between history and modernity, enabling enthusiasts, collectors, and appreciators of art and culture to connect with rare and exquisite pieces that tell stories of bygone eras.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Whether you are seeking ancient relics, traditional handicrafts, or unique artifacts, Artisan Harbor offers a seamless and secure shopping experience, backed by our commitment to authenticity, quality, and customer satisfaction.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.security),
                title: Text('Security & Privacy'),
                onTap: () {
                  // Navigate to Security & Privacy page
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.assignment),
                title: Text('Terms of Use'),
                onTap: () {
                  // Navigate to Terms of Use page
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.policy),
                title: Text('Privacy Policy'),
                onTap: () {
                  // Navigate to Privacy Policy page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
