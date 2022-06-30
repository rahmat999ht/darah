import 'package:darah/app/data/constants/api.dart';
import 'package:get/get.dart';

import '../models/stok_darah_model.dart';


class StokDarahProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return StokDarah.fromJson(map);
      if (map is List) {
        return map.map((item) => StokDarah.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = ApiConstant.apiUrl;
  }

  Future<List<StokDarah>?> getAllStokDarah() async {
    final response = await get('stok');
    return response.body;
  }

  Future<Response<StokDarah>> postStokDarah(StokDarah stokdarah) async =>
      await post('stokdarah', stokdarah);
  Future<Response> deleteStokDarah(int id) async =>
      await delete('stokdarah/$id');
}
