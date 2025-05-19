import 'package:flutter/material.dart';
import 'package:flutter_crud_francisco/models/now_playing.dart';

class MovieSlider extends StatelessWidget {
  final List<Result> movies;
  
  const MovieSlider({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
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
                  itemCount: movies.length,
                  itemBuilder: (BuildContext context, int index) =>
                      _MoviePoster(movie: movies[index])))
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  final Result movie;
  
  const _MoviePoster({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                width: 130,
                height: 190,
                fit: BoxFit.cover,
                placeholder: const AssetImage(
                  'assets-francisco/no-image.jpg'
                ),
                image: NetworkImage(
                  movie.fullPosterImage
                )
              ),
            ),
          ),
          const SizedBox(
            height: 5
          ),
          Text(
            movie.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
