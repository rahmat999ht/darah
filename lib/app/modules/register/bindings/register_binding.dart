import 'package:get/get.dart';

import '../../../data/providers/rumah_sakit_provider.dart';
import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.lazyPut<RumahSakitProvider>(
      () => RumahSakitProvider(),
    );
  }
}
