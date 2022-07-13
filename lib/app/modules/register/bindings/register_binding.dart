import 'package:darah/app/data/providers/user_provider.dart';
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
    Get.lazyPut<UserProvider>(
      () => UserProvider(),
    );
  }
}
