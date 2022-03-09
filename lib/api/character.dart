class Character {
  late List<String> origin;
  late List<String> location;
  late int id;

  late String name,
      status,
      species,
      type,
      gender,
      image,
      originName,
      originUrl,
      locationName,
      locationUrl;

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
    required this.originName,
    required this.originUrl,
    required this.locationName,
    required this.locationUrl,
  });

  static Character fromJson(Map<String, dynamic> json) {
    return Character(
        id: json['id'],
        name: json['name'],
        status: json['status'],
        species: json['species'],
        type: json['type'],
        gender: json['gender'],
        originName: (json['origin']['name']),
        originUrl: (json['origin']['url']),
        locationName: (json['location']['name']),
        locationUrl: (json['location']['url']),
        image: json['image']);
  }
}
