import 'dart:convert';
import 'package:flutter_rickandmorty/api/episode.dart';
import 'package:flutter_rickandmorty/api/episodes.dart';
import 'package:http/http.dart' as http;
import 'character.dart';
import 'characters.dart';

class DBinfo {
  Future<List<Character>> DBinformationCharacter() async {
    var APIUrl = "https://rickandmortyapi.com/api/character";
    final respuesta = await http.get(Uri.parse(APIUrl));

    if (respuesta.statusCode == 200) {
      final respuestaJson = json.decode(respuesta.body);
      final characterNow = Characters.fromJsonList(respuestaJson['results']);

      return characterNow;
    }
    return <Character>[];
  }

  Future<List<Episode>> DBinformationEpisode() async {
    var APIUrl = "https://rickandmortyapi.com/api/episode";
    final respuesta = await http.get(Uri.parse(APIUrl));

    if (respuesta.statusCode == 200) {
      final respuestaJson = json.decode(respuesta.body);
      final characterNow = Episodes.fromJsonList(respuestaJson['results']);

      return characterNow;
    }
    return <Episode>[];
  }
}
