import 'package:flutter/material.dart';

class Wedding {
  final String imageUrl;
  final String title;
  final String description;
  final String date;

  Wedding(
      {required this.imageUrl,
      required this.title,
      required this.description,
      required this.date});
}

// Sample data
final List<Wedding> weddingData = [
  Wedding(
    imageUrl: 'assets/wedding1.jpg', // Replace with API image URL
    title: 'Wedding of John & Jane',
    description: 'A beautiful beach wedding with close family and friends.',
    date: '2024-01-31 15:40:33',
  ),
  Wedding(
    imageUrl: 'assets/wedding2.jpg',
    title: 'Wedding of Alice & Bob',
    description: 'A grand celebration with an elegant garden setting.',
    date: '2024-01-31 15:40:33',
  ),
  Wedding(
    imageUrl: 'assets/wedding3.jpg',
    title: 'Wedding of Chris & Eve',
    description: 'An intimate wedding with rustic charm and countryside vibes.',
    date: '2024-01-31 15:40:33',
  ),
  Wedding(
    imageUrl: 'assets/wedding1.jpg',
    title: 'Wedding of Mike & Linda',
    description: 'A modern wedding with a sleek and stylish urban setting.',
    date: '2024-01-31 15:40:33',
  ),
  Wedding(
    imageUrl: 'assets/wedding3.jpg',
    title: 'Wedding of Dave & Susan',
    description: 'A traditional ceremony followed by a festive reception.',
    date: '2024-01-31 15:40:33',
  ),
  Wedding(
    imageUrl: 'assets/wedding3.jpg',
    title: 'Wedding of Dave & Susan',
    description: 'A traditional ceremony followed by a festive reception.',
    date: '2024-01-31 15:40:33',
  ),
];
