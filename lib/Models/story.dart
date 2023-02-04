final Stroies = {
  "name": "saqlain",
  "id": 10832,
  
};


class Story {
  String name;
  int id;
  Story({
    required this.name,
    required this.id,
  });

  factory Story.fromjson(Map<String, dynamic> json) {
    return Story(
      name: json['name'],
      id: json['id'],
    );
  }
  Map<String, dynamic> tojson() {
    return {
      "name": name,
      "id": id,
    };
  }
}
