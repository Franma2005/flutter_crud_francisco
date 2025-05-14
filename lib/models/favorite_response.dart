import 'dart:convert';

import 'package:flutter_crud_francisco/models/models.dart';

class FavoritesResponse {
    int page;
    List<Result> results;
    int totalPages;
    int totalResults;

    FavoritesResponse({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    factory FavoritesResponse.fromJson(String str) => FavoritesResponse.fromMap(json.decode(str));

    factory FavoritesResponse.fromMap(Map<String, dynamic> json) => FavoritesResponse(
        page: json["page"],
        results: List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );
}