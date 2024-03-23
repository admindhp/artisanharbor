import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  late TextEditingController _rateController;
  File? _imageFile;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    _rateController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _rateController.dispose();
    super.dispose();
  }

  Future<void> _getImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowCompression: true,
    );

    if (result != null) {
      setState(() {
        _imageFile = File(result.files.single.path!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Product Name'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _rateController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Rate'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _getImage();
              },
              child: Text('Pick Product Image'),
            ),
            SizedBox(height: 20),
            _imageFile != null
                ? Image.file(
              _imageFile!,
              height: 200,
            )
                : SizedBox(),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add product action
                // Access the text field values using _nameController.text, _descriptionController.text, _rateController.text
                // Access the selected image file using _imageFile
              },
              child: Text('Add Product'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Amazon's orange color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

