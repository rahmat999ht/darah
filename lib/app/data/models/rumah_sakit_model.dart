class RumahSakit {
  int? id;
  String? name;
  double lat = 0.0;
  double long = 0.0;

  RumahSakit({this.id, this.name, this.lat = 0.0, this.long  = 0.0});

  RumahSakit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lat = json['lat'];
    long = json['long'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['lat'] = lat;
    data['long'] = long;
    return data;
  }
}
