import 'package:flutter/material.dart';

class RewardsList extends StatelessWidget {
  final List<String> rewards;

  RewardsList({required this.rewards});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rewards.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(rewards[index]),
            subtitle: Text('Available to redeem'),
          ),
        );
      },
    );
  }
}