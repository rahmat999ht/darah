import 'package:darah/app/data/providers/user_provider.dart';
import 'package:darah/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/user_model.dart';
// import 'package:darah/app/data/models/user_model.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final userProvider = Get.find<UserProvider>();
  final formKey = GlobalKey<FormState>();
  final emailC = TextEditingController();
  final passC = TextEditingController();
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

  Future<void> login(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
      var data = await userProvider.loginUser(
        User(
          email: emailC.text,
          password: passC.text,
        ),
      );
      print(data);
      if (data != null) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        Get.offNamed(
          Routes.HOME,
          arguments: data,
        );
      } else {
        Get.defaultDialog(
          title: "Error",
          middleText: "Ada Yang Salah",
          radius: 8,
        );
      }
    }
  }
  void toRegis() => Get.toNamed(Routes.REGISTER);
}
