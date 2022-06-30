import 'package:darah/app/data/models/stok_darah_model.dart';

import 'rumah_sakit_model.dart';

class StokRumahSakit {
  final RumahSakit rumahSakit;
  final List<StokDarah> listStokdarah;
  bool isChecked;
  // final int stokDarah;
  StokRumahSakit({
    required this.rumahSakit,
    required this.isChecked,
    required this.listStokdarah,
    // required this.stokDarah,
  });
}
