import 'package:flutter/material.dart';

class LoyaltyClubScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loyalty Club'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[  
            Text(
              'Points Level Rewards',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Placeholder for points level rewards
            Text(
              'Gold Level: 1000 points\nSilver Level: 500 points\nBronze Level: 200 points',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Birthday Offers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Placeholder for birthday offers
            Text(
              'Receive a special dessert on your birthday!\nGet double points on birthday month!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}