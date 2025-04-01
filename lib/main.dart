import 'package:flutter/material.dart';
import 'package:flutter_crud_francisco/screens/screens.dart';
import 'package:flutter_crud_francisco/theme/app_theme_francisco.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peliculas',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      theme: AppTheme.light,
      routes: {
        'home': (context) => const HomeScreen(),
        'details': (context) => const DetailsScreen(),
      },
    );
  }
}