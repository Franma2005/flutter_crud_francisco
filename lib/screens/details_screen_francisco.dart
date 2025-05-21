import 'package:flutter/material.dart';
import 'package:flutter_crud_francisco/models/now_playing.dart';
import 'package:flutter_crud_francisco/widgets/cast_carrousel_francisco.dart';

class DetailsScreen extends StatelessWidget {
  
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Result movie = ModalRoute.of(context)!.settings.arguments as Result;
    print('title: ${movie.title}');
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const _InfoPelicula(),
              const _Overview(),
              const CastCarrousel()
            ])
          )
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black26,
          child: const Text(
            'movie-title',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16
              )
            )
          ),
        background: const FadeInImage(
          placeholder: AssetImage(
            'assets-francisco/loading.gif'
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

class _InfoPelicula extends StatelessWidget {
  const _InfoPelicula({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              height: 200,
              placeholder: AssetImage(
                'assets-francisco/no-image.jpg'
              ),
              image: NetworkImage(
                 'https://r-charts.com/es/miscelanea/procesamiento-imagenes-magick_files/figure-html/recortar-bordes-imagen-r.png'
              )
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'movie-title',
                style: Theme.of(context).textTheme.headlineMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 2
              ),
              Text('movie-subtitle',
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,  
            ),
            const Row(
              children: [
                Icon(Icons.star_outline, size: 15, color: Colors.grey),
                SizedBox(width: 5),
                Text(
                  'movie-rate'
                )
              ],
            )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      child: Text(
        'Deserunt non qui reprehenderit sit elit. Mollit qui non adipisicing sunt adipisicing aliquip aliqua amet officia do ex enim ad sit. Dolore sit fugiat enim cillum voluptate ipsum eiusmod Lorem eiusmod elit amet veniam.',
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.justify,
      ),
    );
  }
}