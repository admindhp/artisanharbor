import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class EmailSupportPage extends StatelessWidget {
  final String recipientEmail = 'dailyhealthpartner@gmail.com'; // Your email address

  Future<void> _sendEmail(BuildContext context, String userEmail, String message) async {
    final smtpServer = gmail('ailyhealthpartner@gmail.com', 'Dhpadmin@001');

    final messageToSend = Message()
      ..from = Address(userEmail)
      ..recipients.add(recipientEmail)
      ..subject = 'Support Request from $userEmail'
      ..text = message;

    try {
      final sendReport = await send(messageToSend, smtpServer);
      print('Message sent: ' + sendReport.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Message sent successfully!'),
        ),
      );
    } on MailerException catch (e) {
      print('Message not sent. Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error sending message. Please try again later.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Email Support'), // Amazon orange color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.email,
              size: 100,
              color: Colors.orange, // Amazon orange color
            ),
            SizedBox(height: 20),
            Text(
              'Enter Your Email Address:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Enter Your Message:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: messageController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                labelText: 'Message',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String userEmail = emailController.text.trim();
                String message = messageController.text.trim();
                if (userEmail.isNotEmpty && message.isNotEmpty) {
                  _sendEmail(context, userEmail, message);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please enter both email address and message'),
                    ),
                  );
                }
              },
              child: Text('Contact Support'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,// Set button color to orange
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Set button border radius
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
