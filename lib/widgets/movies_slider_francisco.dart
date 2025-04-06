import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Favoritas',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) =>
                      _MoviePoster()))
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: const Column(
        children: [
          FadeInImage(
            width: 130,
            height: 190,
            fit: BoxFit.cover,
            placeholder: AssetImage(
              'assets-francisco/no-image.jpg'
            ),
            image: NetworkImage(
              'https://r-charts.com/es/miscelanea/procesamiento-imagenes-magick_files/figure-html/recortar-bordes-imagen-r.png'
            )
          ),
          Text(
            'El señor de los anillos el retorno del rey',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
