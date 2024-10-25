import 'package:flutter/material.dart';
import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import './listOfRooms.dart';
import './bedRoomCard.dart';
import './roomDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BedroomListScreen(),
    );
  }
}

// Initial Screen (List of Bedroom Cards)
class BedroomListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bedroom Listings"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Add your notification handler here
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: null, // Handle Home navigation
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: null, // Handle Settings navigation
            ),
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        
      child:Column(
        children: [
          // Search Bar and Filter Icon Row
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for bedrooms...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {
                    // Handle filter button press
                  },
                ),
              ],
            ),
          ),
          // Bedroom Cards with Horizontal Scroll
          SizedBox(
            height:250 , // Height of each bedroom card
            child: ListOfRooms(),
          ),
         
          // "Our Rooms" Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Our Rooms',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward, color: Colors.blue),
                      onPressed: () {
                        // Handle "View all" button press
                      },
                    ),
                  ],
                ),
                
              ],
            ),
          ),
          SizedBox(
            height: 250, // Height of each bedroom card
            child: ListOfRooms()
          ),
          
        ],
        
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: '',
            backgroundColor: Colors.grey,
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.pink[800],
        onTap: null,
      ),
    );
  }
}

