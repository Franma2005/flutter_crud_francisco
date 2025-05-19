import 'package:flutter/material.dart';
import 'package:flutter_crud_francisco/providers/movie_provider_francisco.dart';
import 'package:flutter_crud_francisco/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MovieProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Damflix'),
        actions: const [
          Icon(Icons.search_outlined)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(movies: moviesProvider.ondDisplayMovies),
            MovieSlider(movies: moviesProvider.favoritesMovies)
          ],
        ),
      )
    );
  }
}