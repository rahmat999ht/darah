import 'package:darah/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class CustomCard extends GetView<HomeController> {
  final String title, subtitle;
  final int index;
  const CustomCard({
    Key? key,
    required this.index,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = controller.listDataStokRS[index];
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        onTap: () {
          Get.toNamed(
            Routes.DETAIL_STOK,
            arguments: data,
          );
        },
        // leading: Transform.scale(
        //   scale: 1.5,
        //   child:
          //  Checkbox(
          //   shape: const CircleBorder(),
          //   onChanged: (v) {
          //     for (var element in controller.listDataStokRS) {
          //       element.isChecked = false;
          //     }
          //     controller.listDataStokRS[index].isChecked = true;
          //     controller.lat.value = data.rumahSakit.lat;
          //     controller.long.value = data.rumahSakit.long;
          //     // ignore: invalid_use_of_protected_member
          //     controller.refresh();
          //   },
          //   value: data.isChecked,
          // ),
        // ),
        title: Text(
          title,
        ),
        subtitle: Text(
          subtitle,
        ),
      ),
    );
  }
}
