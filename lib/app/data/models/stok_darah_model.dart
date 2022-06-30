class StokDarah {
  int? id;
  String? golongan;
  int? stock;
  int? pmiId;

  StokDarah({this.id, this.golongan, this.stock, this.pmiId});

  StokDarah.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    golongan = json['golongan'];
    stock = json['stock'];
    pmiId = json['pmi_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['golongan'] = golongan;
    data['stock'] = stock;
    data['pmi_id'] = pmiId;
    return data;
  }
}
