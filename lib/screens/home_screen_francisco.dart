import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Damflix'),
        actions: [
          Icon(Icons.search_outlined)
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            'Home Screen',
          ),
        ),
      ),
    );
  }
}