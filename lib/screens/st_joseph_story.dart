import 'package:flutter/material.dart';

class StJosephStoryScreen extends StatelessWidget {
  const StJosephStoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Story'
        )
      ),
      body: Center(
        child: Text(
          'St Joseph Story',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )
        ),
      )
    );
  }
}