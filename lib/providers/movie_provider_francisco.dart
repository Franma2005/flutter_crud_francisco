import 'dart:convert';
import 'package:flutter_crud_francisco/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MovieProvider extends ChangeNotifier {
  final String _apiKey = '382ffdb92c5388068a614d6840b46ca8';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-Es';

  List<Result> onDisplayMovies = [];
  List<Result> favoritesMovies = [];

  MovieProvider() {
    print('MoviesProvider inicializado');

    getOnDisplayMovies();
    getFavoritesMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});
    var response = await http.get(url);
    print('hola');
    final NowPlayingResponse nowPlayingResponse =
        NowPlayingResponse.fromJson(response.body);
    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getFavoritesMovies() async {
    try {
      var url = Uri.https(_baseUrl, '3/movie/popular',
          {'api_key': _apiKey, 'language': _language, 'page': '1'});
      var response = await http.get(url);
      print('Respuest${response.body}');
      final FavoritesResponse favoritesResponse =
          FavoritesResponse.fromJson(response.body);

      print('Paco $favoritesResponse');
      favoritesMovies = [...favoritesMovies, ...favoritesResponse.results];
      notifyListeners();
    } catch (e) {
      print('Error en getFavoritesMovies: $e');
    }
  }
}
