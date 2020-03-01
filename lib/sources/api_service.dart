import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:sinta_app/model/response_authors.dart';

class AppRepository {
  final _baseUrl = 'ttp://api.sinta.ristekdikti.go.id/';

  Future<ResponseAuthors> getListAuthor(
      int itemsCount, currentPage, sort) async {
    var url =
        "$_baseUrl/authors?items=$itemsCount&page=$currentPage&q&sort=$sort";
    final response = await http.get(url, headers: {HttpHeaders.authorizationHeader: "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hcGkuc2ludGEucmlzdGVrZGlrdGkuZ28uaWRcL2Z1c2lvXC9wdWJsaWMiLCJzdWIiOiI2MzRiNmM1My01MGNkLTU1OWEtYmRkOS05ZWI4NjBjNTk4ZjYiLCJpYXQiOjE1ODMwNTgzMzEsImV4cCI6MTU4MzA2MTkzMSwibmFtZSI6ImxvbWJhc2ludGEifQ.lrOuHA2XQeohabj2A9zTvhjxedObtCgAIeaUWUssJ6g"});
    if (response.statusCode == 200) {
      print(response.statusCode.toString());
      return ResponseAuthors.fromJsonMap(json.decode(response.body));

    } else {
      print("WAW");
      throw Exception('Failed to load');
    }
  }
}
