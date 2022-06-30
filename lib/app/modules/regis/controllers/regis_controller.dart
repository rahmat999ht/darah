import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/user_model.dart';
import '../../../data/providers/rumah_sakit_provider.dart';
import '../../../data/providers/user_provider.dart';
import '../../../routes/app_pages.dart';

class RegisController extends GetxController {
  //TODO: Implement RegisController

  final formKeyRegis = GlobalKey<FormState>();
  final regisEmailC = TextEditingController(text: "tes@email.com");
  final regisPassC = TextEditingController(text: "passs");

  final userProvider = Get.find<UserProvider>();
  final rsProvider = Get.find<RumahSakitProvider>();

  final count = 0.obs;
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

  void increment() => count.value++;

  Future<void> login(BuildContext context) async {
    if (formKeyRegis.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
      var data = await userProvider.post(
        'users',
        User(
          email: regisEmailC.text,
          password: regisPassC.text,
          type: "user",
        ).toJson(),
      );

      if (data.isOk) {
        if (!(data.body?.error ?? false)) {
          // ignore: use_build_context_synchronously
          // ScaffoldMessenger.of(context).hideCurrentSnackBar();
          Get.offAllNamed(
            Routes.HOME,
            arguments: data.body as User,
          );
        } else {
          Get.defaultDialog(
            title: "Error",
            middleText: "${data.body!.message!}",
            radius: 8,
          );
        }
      } else {
        Get.defaultDialog(
          title: "Error",
          middleText: "Ada Yang Salah",
          radius: 8,
        );
      }
    }
  }
}
