import 'episode.dart';

class Episodes {
  Episodes();

  static List<Episode> fromJsonList(List<dynamic> jsonList) {
    List<Episode> listaEpisodeos = [];
    if (jsonList != null) {
      for (var episodeo in jsonList) {
        final cap = Episode.fromJson(episodeo);
        listaEpisodeos.add(cap);
      }
    }
    return listaEpisodeos;
  }
}
