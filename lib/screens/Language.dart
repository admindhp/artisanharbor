import 'package:flutter/material.dart';

class LanguageRegionPage extends StatefulWidget {
  @override
  _LanguageRegionPageState createState() => _LanguageRegionPageState();
}

class _LanguageRegionPageState extends State<LanguageRegionPage> {
  String _selectedLanguage = 'English';
  String _selectedRegion = 'United States';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language & Region'), // Amazon-like color
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select Your Preferred Language',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            DropdownButtonFormField<String>(
              value: _selectedLanguage,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value!;
                });
              },
              items: ['English', 'Spanish', 'French', 'German']
                  .map((language) => DropdownMenuItem(
                value: language,
                child: Text(language),
              ))
                  .toList(),
            ),
            SizedBox(height: 20.0),
            Text(
              'Select Your Preferred Region',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            DropdownButtonFormField<String>(
              value: _selectedRegion,
              onChanged: (value) {
                setState(() {
                  _selectedRegion = value!;
                });
              },
              items: [
                'United States',
                'United Kingdom',
                'Canada',
                'Australia'
              ]
                  .map((region) => DropdownMenuItem(
                value: region,
                child: Text(region),
              ))
                  .toList(),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Apply selected language and region settings
              },
              child: Text('Apply Changes'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,// Amazon-like color
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

