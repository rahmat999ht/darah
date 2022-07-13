import 'package:darah/app/data/models/stok_darah_model.dart';
import 'package:darah/app/data/models/stok_rs_model.dart';
import 'package:darah/app/data/providers/rumah_sakit_provider.dart';
import 'package:darah/app/data/providers/stok_darah_provider.dart';
import 'package:get/get.dart';
import '../../../data/models/rumah_sakit_model.dart';

class HomeController extends GetxController with StateMixin<List<StokRumahSakit>> {
  //TODO: Implement HomeController

  var rsListData = <RumahSakit>[];
  var stokListData = <StokDarah>[];

  var listDataStokRS = <StokRumahSakit>[];

  final rsProvider = Get.find<RumahSakitProvider>();
  final stokProvider = Get.find<StokDarahProvider>();

  // final long = 0.0.obs,lat = 0.0.obs;
  @override
  void onInit() async {
    rsListData = await rsProvider.getAllRumahSakit() ?? [];
    stokListData = await stokProvider.getAllStokDarah() ?? [];
    
       for (var i = 0; i < rsListData.length; i++) {
        
      listDataStokRS.add(
        StokRumahSakit(
          // stokDarah:stok ,
          isChecked: i == 0 ? true : false,
          rumahSakit: rsListData[i],
          listStokdarah: stokListData
              .where((element) => rsListData[i].id == element.pmiId)
              .toList(),
        ),
      );
    }
    change(listDataStokRS,
        status: RxStatus.success());
    // print(await rsProvider.getAllRumahSakit());
    // rsListData = ;
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

  // void increment() => count.value++;
}
