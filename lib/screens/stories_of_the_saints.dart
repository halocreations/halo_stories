import 'package:flutter/material.dart';

class StoriesOfTheSaintsScreen extends StatelessWidget {
StoriesOfTheSaintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 197, 192),
      appBar: AppBar(
        title: 
          Text('STORIES OF THE SAINTS'),
          titleTextStyle: 
            TextStyle(
              fontSize: 24, 
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 72, 4, 72)
            ),
        backgroundColor: const Color.fromARGB(255, 54, 197, 192),
      ),
    );
  }
}