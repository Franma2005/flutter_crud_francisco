

import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier {

  MovieProvider() {
    print('MoviesProvider inicializado');
  }

  getOnDisplayMovies() async {
    print('getOnDisplayMovies');
  }

}