import 'package:darah/app/data/models/rumah_sakit_model.dart';
import 'package:darah/app/data/models/user_model.dart';
import 'package:darah/app/data/providers/rumah_sakit_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:darah/app/routes/app_pages.dart';
import 'package:get_cli/common/utils/json_serialize/helpers.dart';

import '../../../data/providers/user_provider.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  final gender = "Laki-Laki".obs;
  final gol = "A".obs;
  final rs = "Wahidin".obs;

  final formKeyRegister = GlobalKey<FormState>();
  final nameC = TextEditingController();
  final alamatC = TextEditingController();
  final emailC = TextEditingController();
  final passC = TextEditingController();

  // final nameC = TextEditingController(text: "yutyut");
  // final alamatC = TextEditingController(text: "unknow");
  // final emailC = TextEditingController(text: "tes@email.com");
  // final passC = TextEditingController(text: "passs");

  final listGender = ['Laki-Laki', 'Perempuan'];
  final listGol = ['A', 'B', 'O', 'AB'];
  var listRS = <String>[].obs;
  var listDataRs = <RumahSakit>[];

  final userProvider = Get.find<UserProvider>();
  final rsProvider = Get.find<RumahSakitProvider>();

  @override
  void onInit() async {
    listDataRs = (await rsProvider.getAllRumahSakit()) ?? [];
    listRS.value = listDataRs.map((e) => e.name!).toSet().toList();
    rs.value = listRS.first;
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
    if (formKeyRegister.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Anda Otomatis Login')),
      );
      print(rs.value);
      var pmiId = listDataRs.singleWhere((e) => e.name == rs.value).id;
      print(pmiId);

      // var get_data = await userProvider.get(
      //     'users', User(email: emailC.value, password: passC.value),);
      //     print(get_data);
      var data = await userProvider.post(
        'users',
        User(
          name: nameC.text,
          jkl: gender.value == "Laki-Laki" ? "L" : "P",
          almat: alamatC.text,
          golongan: gol.value,
          email: emailC.text,
          password: passC.text,
          pmiId: pmiId ?? 1,
          type: "user",
        ).toJson(),
      );

      if (data.isOk) {
        if (!(data.body?.error ?? false)) {
          // ignore: use_build_context_synchronously
          // ScaffoldMessenger.of(context).hideCurrentSnackBar();
          Get.offAllNamed(
            Routes.DETAIL_STOK,
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

  void toLogin() => Get.toNamed(Routes.LOGIN);
}
