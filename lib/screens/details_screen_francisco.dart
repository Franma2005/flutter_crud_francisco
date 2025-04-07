import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar()
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('movie-title', style: TextStyle(color: Colors.white)),
        background: FadeInImage(
          placeholder: AssetImage(
            'assets-francisco/no-image.jpg'
          ),
          image: NetworkImage(
            'https://r-charts.com/es/miscelanea/procesamiento-imagenes-magick_files/figure-html/recortar-bordes-imagen-r.png'
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}