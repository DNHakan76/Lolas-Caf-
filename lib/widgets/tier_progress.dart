import 'package:flutter/material.dart';

class TierProgress extends StatelessWidget {
  final int currentLevel;
  final double progressToNextLevel;

  TierProgress({required this.currentLevel, required this.progressToNextLevel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Current Level: \$currentLevel', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        LinearProgressIndicator(
          value: progressToNextLevel,
          minHeight: 10,
          backgroundColor: Colors.grey[300],
          color: Colors.blue,
        ),
        SizedBox(height: 5),
        Text('${(progressToNextLevel * 100).toStringAsFixed(0)}% to the next level', style: TextStyle(fontSize: 16)),
      ],
    );
  }
}