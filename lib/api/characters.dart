import 'character.dart';

class Characters {
  Characters();

  static List<Character> fromJsonList(List<dynamic> jsonList) {
    List<Character> listaPersonajes = [];
    if (jsonList != null) {
      for (var personaje in jsonList) {
        final persona = Character.fromJson(personaje);
        listaPersonajes.add(persona);
      }
    }
    return listaPersonajes;
  }
}
