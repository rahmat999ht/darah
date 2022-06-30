import 'package:darah/app/data/models/stok_darah_model.dart';
import 'package:darah/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../data/models/stok_rs_model.dart';

class DetailStokController extends GetxController {
  final StokRumahSakit stokRumahSakit = Get.arguments;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  String getNamaRumahSakit() => "${stokRumahSakit.rumahSakit.name}";
  List<StokDarah> getStokDarah() => stokRumahSakit.listStokdarah;
  void toRegister() => Get.toNamed(Routes.REGISTER);
}
