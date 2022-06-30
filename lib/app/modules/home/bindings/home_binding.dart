import 'package:darah/app/data/providers/rumah_sakit_provider.dart';
import 'package:darah/app/data/providers/stok_darah_provider.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<RumahSakitProvider>(
      () => RumahSakitProvider(),
    );
    Get.lazyPut<StokDarahProvider>(
      () => StokDarahProvider(),
    );
  }
}
