import 'package:flutter/material.dart';
class BedroomCard extends StatelessWidget {
  final String imageUrl;
  final String description;
  final String price;
  final double rating;
  final VoidCallback onTap;

  const BedroomCard({
    required this.imageUrl,
    required this.description,
    required this.price,
    required this.rating,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: 200, // Width of each card
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // Image with heart icon at the top-right
              Stack(
                children: [
                  Image.asset(
                    imageUrl,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                price,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    rating.toString(),
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}