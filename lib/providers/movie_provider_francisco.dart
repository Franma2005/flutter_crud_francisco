import 'dart:convert';
import 'package:flutter_crud_francisco/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MovieProvider extends ChangeNotifier {

  final String _apiKey = '382ffdb92c5388068a614d6840b46ca8';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  List<Result> ondDisplayMovies = [];
  List<Result> favoritesMovies = [];

  MovieProvider() {
    print('MoviesProvider inicializado');

    getOnDisplayMovies();
    getFavoritesMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1'
    });
    var response = await http.get(url);

    final NowPlayingResponse nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

    ondDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getFavoritesMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/popular', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1'
    });
    var response = await http.get(url);

    final FavoritesResponse favoritesResponse = FavoritesResponse.fromJson(response.body);

    favoritesMovies = [...favoritesMovies, ...favoritesResponse.results];
    notifyListeners();
  }
}