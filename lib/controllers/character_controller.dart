import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/character_model.dart';

const String url = "https://escribo.com/books.json";

List<Character> parseCharacter(String responseBory){
  var list = json.decode(responseBory) as List<dynamic>;
  var characters = list.map((e) => Character.fromJson(e)).toList();
  return characters;
}

Future<List<Character>> fetchCharacters() async {
  final http.Response response = await http.get(Uri.parse(url));

  if(response.statusCode == 200){
    return compute(parseCharacter, response.body);
  } else {
    throw Exception(response.statusCode);
  }


}