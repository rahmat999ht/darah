import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_stok_controller.dart';

class DetailStokView extends GetView<DetailStokController> {
  const DetailStokView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailStokView'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Keterangan :\n",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '\t\t${controller.getNamaRumahSakit()}\n',
              style: const TextStyle(fontSize: 20),
            ),
            const Text(
              "Stok Darah :",
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: controller.getStokDarah().length,
                itemBuilder: (context, index) {
                  var dataStok = controller.getStokDarah()[index].stock;
                  var dataGolongan = controller.getStokDarah()[index].golongan;
                  return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlue,
                      ),
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 7,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$dataGolongan",
                            style: const TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "$dataStok",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ));
                },
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 0,
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     FloatingActionButton.extended(
            //       onPressed: controller.toRegister ,
            //       label: const Text('Donatur'),
            //       icon: const Icon(Icons.add),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
