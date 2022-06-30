import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/form/drobdown.dart';
import '../../../widgets/form/text_field.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: controller.formKeyRegister,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Register",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormCostum(
                title: 'Nama',
                controller: controller.nameC,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: DropDownButtonCustom(
                      list: controller.listGender,
                      value: controller.gender,
                      title: "Gender",
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: DropDownButtonCustom(
                        list: controller.listGol,
                        value: controller.gol,
                        title: "Golongan"),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormCostum(
                title: 'Alamat',
                controller: controller.alamatC,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormCostum(
                controller: controller.emailC,
                title: 'Email',
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormCostum(
                controller: controller.passC,
                title: 'Password',
              ),
              const SizedBox(
                height: 15,
              ),
              Obx(() => DropDownButtonCustom(
                    list: controller.listRS.value,
                    value: controller.rs,
                    title: "RS Tujuan",
                  )),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () async {
                  await controller.login(context);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
