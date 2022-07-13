class StokDarah {
  int? id;
  int? golongan;
  int? stock;
  int? pmiId;
  String? goldar;

  StokDarah({this.id, this.golongan, this.stock, this.pmiId});

  StokDarah.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    golongan = json['golongan'];
    stock = json['stock'];
    pmiId = json['pmi_id'];
    goldar = json['goldar'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['golongan'] = golongan;
    data['stock'] = stock;
    data['pmi_id'] = pmiId;
    data['goldar'] = goldar;
    return data;
  }
}
