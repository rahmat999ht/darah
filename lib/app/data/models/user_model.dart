class User {
  int? id;
  String? name;
  String? jkl;
  String? email;
  String? password;
  int? golongan;
  String? type;
  int? pmiId;
  String? almat;
  String? usia;
  bool? error;
  String? message;

  User(
      {this.id,
      this.name,
      this.jkl,
      this.email,
      this.password,
      this.golongan,
      this.type,
      this.pmiId,
      this.almat,
      this.usia});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    jkl = json['jkl'];
    email = json['email'];
    password = json['password'];
    golongan = json['golongan'];
    type = json['type'];
    pmiId = json['pmi_id'];
    almat = json['almat'];
    usia = json['usia'];
    error = json["error"];
    message = json["message"];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['jkl'] = jkl;
    data['email'] = email;
    data['password'] = password;
    data['golongan'] = golongan;
    data['type'] = type;
    data['pmi_id'] = pmiId;
    data['almat'] = almat;
    data['usia'] = usia;
    return data;
  }

  Map<String, dynamic> toJsonLogin() {
    final data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
