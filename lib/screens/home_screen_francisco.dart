import 'package:flutter/material.dart';
import 'package:flutter_crud_francisco/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Damflix'),
        actions: const [
          Icon(Icons.search_outlined)
        ],
      ),
      body: const Column(
        children: [
          CardSwiper()
        ],
      )
    );
  }
}