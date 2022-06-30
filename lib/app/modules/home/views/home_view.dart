import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/home_controller.dart';
import '../widgets/card_custom.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    //  void _onMapCreated(GoogleMapController controller) {
    //   // mapController = controller;
    // }
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Text("data"),
          Expanded(
            child: controller.obx(
              (value) => ListView.builder(
                itemCount: value?.length ?? 0,
                itemBuilder: (context, index) {
                  int stok = 0;
                  for (var element in value![index].listStokdarah) {
                    stok += element.stock ?? 0;
                  }
                  // var data = value[index];
                  return CustomCard(
                    key: Key("${value[index].rumahSakit.name}"),
                    title: "${value[index].rumahSakit.name}",
                    subtitle: "$stok",
                    index: index,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


