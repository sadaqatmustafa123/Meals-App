import 'package:flutter/material.dart';
import 'package:meals_app/dashboard_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE0EAFC),
              Color(0xFFC6C6EE),
            ],
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to Customized Meal Planner!',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Your personalized meal planning and delivery service.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue[900],
              ),
            ),
            const SizedBox(height: 40.0),
            SizedBox(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildImageCard(
                      'https://images.pexels.com/photos/7258493/pexels-photo-7258493.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  buildImageCard(
                      'https://images.pexels.com/photos/3735157/pexels-photo-3735157.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  buildImageCard(
                      'https://images.pexels.com/photos/4240995/pexels-photo-4240995.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  // Add more images here
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageCard(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageUrl,
          width: 200.0, // Adjust the width as needed
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnboardingScreen(),
  ));
}
