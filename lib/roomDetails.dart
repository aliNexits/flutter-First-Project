import 'package:flutter/material.dart';
class RoomDetails extends StatelessWidget {
  final String imageUrl;
  final String description;
  final String longDescription;
  final String price;
  final double rating;

  const RoomDetails({
    required this.imageUrl,
    required this.description,
    required this.longDescription,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(description),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Background Image
            Container(
              height: MediaQuery.of(context).size.height * 0.65, 
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            Material(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60), 
               
              ),
              elevation: 4, 
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(60), 
                    
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Rating: $rating',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16), // Space before the description
                    Text(
                      longDescription,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20), // Space before the button
                    // Book Now Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your booking action here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink, // Background color
                          foregroundColor: Colors.white, // Text color
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 32.0,
                          ),
                        ),
                        child: const Text(
                          'Book Now',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}