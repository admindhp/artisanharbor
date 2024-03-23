import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  final List<FAQItem> faqItems = [
    FAQItem(
      question: 'How can I track my order?',
      answer:
      'You can track your order by navigating to the "Orders" section in your account dashboard.',
    ),
    FAQItem(
      question: 'What payment methods do you accept?',
      answer: 'We accept Visa, Mastercard, American Express, and PayPal.',
    ),
    FAQItem(
      question: 'How do I return an item?',
      answer: 'You can initiate a return request by going to the "Returns" section in your account.',
    ),
    FAQItem(
      question: 'Do you offer international shipping?',
      answer: 'Yes, we offer international shipping to select countries. Shipping rates may vary.',
    ),
    FAQItem(
      question: 'How can I contact customer support?',
      answer: 'You can contact our customer support team via email at suppor.dhp@gmail.com.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
      ),
      body: ListView.builder(
        itemCount: faqItems.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(faqItems[index].question),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  faqItems[index].answer,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}


