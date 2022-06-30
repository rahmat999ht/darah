import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/form/text_field.dart';
import '../controllers/regis_controller.dart';

class RegisView extends GetView<RegisController> {
  const RegisView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: controller.formKeyRegis,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Register Donatur",
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
                controller: controller.regisEmailC,
                title: 'Email',
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormCostum(
                controller: controller.regisPassC,
                title: 'Password',
              ),
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
