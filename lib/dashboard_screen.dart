import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900], // Match the primary color
      ),
      body: Container(
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   colors: [
            //     Color(0xFFE0EAFC),
            //     Color(0xFFC6C6EE),
            //   ],
            // ),
            ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back, User!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900], // Match the primary color
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Here\'s what\'s on your plate today:',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue[900], // Match the primary color
              ),
            ),
            const SizedBox(height: 20.0),
            // Add meal plan overview widget here
            // Add recommended recipes widget here
            // Add upcoming deliveries widget here
          ],
        ),
      ),
    );
  }
}
