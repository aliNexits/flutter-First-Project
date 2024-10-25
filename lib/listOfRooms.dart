
import 'package:flutter/material.dart';
import './bedRoomCard.dart';
import './roomDetails.dart';
class Room {
  final String imageUrl;
  final String description;
  final String price;
  final double rating;
  final String longDescription;

  Room({
    required this.imageUrl,
    required this.description,
    required this.price,
    required this.rating,
    required this.longDescription,
  });
}

class ListOfRooms extends StatelessWidget {
  final List<Room> rooms = [
    Room(
      imageUrl: '../assets/bedroom1.jpg',
      description: 'Cozy Bedroom',
      price: '\$120 per night',
      rating: 4.5,
      longDescription: "You are now ready to start the First Flutter app codelab. In about an hour and a half, you will learn the basics of Flutter by creating an app that works on mobile, desktop, and web.",
    ),
    Room(
      imageUrl: '../assets/bedroom2.jpg',
      description: 'Luxury Suite',
      price: '\$250 per night',
      rating: 5.0,
      longDescription: "You are now ready to start the First Flutter app codelab. In about an hour and a half, you will learn the basics of Flutter by creating an app that works on mobile, desktop, and web.",
    ),
    Room(
      imageUrl: '../assets/bedroom3.jpg',
      description: 'Modern Room',
      price: '\$180 per night',
      rating: 4.8,
      longDescription: "You are now ready to start the First Flutter app codelab. In about an hour and a half, you will learn the basics of Flutter by creating an app that works on mobile, desktop, and web.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: rooms.length,
      itemBuilder: (context, index) {
        final room = rooms[index];
        return BedroomCard(
          imageUrl: rooms[index].imageUrl,
          description: room.description,
          price: room.price,
          rating: room.rating,
          onTap: () {
            // Navigate to RoomDetails view
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RoomDetails(
                  imageUrl: room.imageUrl,
                  description: room.description,
                  price: room.price,
                  longDescription: room.longDescription,
                  rating: room.rating,
                ),
              ),
            );
          },
        );
      },
    );
  }
}