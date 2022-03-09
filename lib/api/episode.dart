class Episode {
  late int id;

  Episode({required this.id});

  static Episode fromJson(Map<String, dynamic> json) {
    return Episode(id: json['id']);
  }
}
