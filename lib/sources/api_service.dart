import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sinta_app/model/authors.dart';
import 'package:sinta_app/model/authors.dart';

class ApiService {
  //Client client;
  final _endPoint = '/authors?items=10&page=1&q&sort=1';
  final _baseUrl = 'http://api.sinta.ristekdikti.go.id';

//  Future<>

}

class AppRepository {
  final _baseUrl = 'http://api.sinta.ristekdikti.go.id';

  Future<Authors> getListAuthor(int itemsCount, currentPage, sort) async {
    var url =
        "$_baseUrl/authors?items=$itemsCount&page=$currentPage&q&sort=$sort";
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Authors.fromJsonMap(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }
}
