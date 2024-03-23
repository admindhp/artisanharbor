import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
      ),
      body: ListView.builder(
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          return _buildReviewCard(context, reviews[index]);
        },
      ),
    );
  }

  Widget _buildReviewCard(BuildContext context, Review review) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reviewer: ${review.reviewerName}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text(
              'Product: ${review.product}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Rating: ${review.rating}',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Comment: ${review.comment}',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Review {
  final String reviewerName;
  final double rating;
  final String comment;
  final String product;

  Review({
    required this.reviewerName,
    required this.rating,
    required this.comment,
    required this.product
  });
}

// Sample list of reviews (replace with actual data)
List<Review> reviews = [
  Review(
    reviewerName: 'Madhu',
    product: 'Ancient Paintings',
    rating: 5.0,
    comment: 'I highly recommend the "Ancient Paintings" set to anyone looking to add a touch of history and elegance to their home or office. With their timeless beauty and undeniable charm, these paintings are sure to spark conversation and inspire wonder for years to come',
  ),
  Review(
    reviewerName: 'Abinaya',
    product: 'Ancient Jugs',
    rating: 4.8,
    comment: 'I highly recommend the Ancient Jugs collection to anyone with an interest in history, archaeology, or art. These jugs are not just objects of beauty; they are portals to the past, inviting us to explore and appreciate the richness of ancient civilizations',
  ),
  Review(
    reviewerName: 'Abdul Malik',
    product: 'Ancient Knife',
    rating: 4.8,
    comment: ' Wholeheartedly recommend the Ancient Knife to fellow enthusiasts and collectors alike. Its timeless elegance, exceptional craftsmanship, and rich historical significance make it a must-have for anyone with a passion for the past',
  ),
  Review(
    reviewerName: 'Abdul Habill',
    product: 'Ancient Jewels',
    rating: 4.7,
    comment: 'The Ancient Jewels collection is a testament to the enduring allure of beauty and craftsmanship. Whether you are a collector, a connoisseur of fine jewelry, or simply someone who appreciates the exquisite, these jewels are sure to captivate your imagination and elevate your appreciation for the artistry of the ancients',
  ),
  Review(
    reviewerName: 'Abdul Kalam',
    product: 'Ancient Pots',
    rating: 4.5,
    comment: 'I highly recommend the Ancient Pots set to anyone interested in history, culture, or simply appreciative of fine craftsmanship. With their timeless beauty and rich historical significance, they are sure to become cherished pieces in any collection.',
  ),
];
