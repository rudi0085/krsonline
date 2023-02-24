import 'package:get/get.dart';

import 'package:krsonline/app/modules/btq/bindings/btq_binding.dart';
import 'package:krsonline/app/modules/btq/views/btq_view.dart';
import 'package:krsonline/app/modules/detailKrs/bindings/detail_krs_binding.dart';
import 'package:krsonline/app/modules/detailKrs/views/detail_krs_view.dart';
import 'package:krsonline/app/modules/home/bindings/home_binding.dart';
import 'package:krsonline/app/modules/home/views/home_view.dart';
import 'package:krsonline/app/modules/informasi/bindings/informasi_binding.dart';
import 'package:krsonline/app/modules/informasi/views/informasi_view.dart';
import 'package:krsonline/app/modules/jadwal/bindings/jadwal_binding.dart';
import 'package:krsonline/app/modules/jadwal/views/jadwal_view.dart';
import 'package:krsonline/app/modules/kerjapraktik/bindings/kerjapraktik_binding.dart';
import 'package:krsonline/app/modules/kerjapraktik/views/kerjapraktik_view.dart';
import 'package:krsonline/app/modules/kkn/bindings/kkn_binding.dart';
import 'package:krsonline/app/modules/kkn/views/kkn_view.dart';
import 'package:krsonline/app/modules/konfirmasi/bindings/konfirmasi_binding.dart';
import 'package:krsonline/app/modules/konfirmasi/views/konfirmasi_view.dart';
import 'package:krsonline/app/modules/krs/bindings/krs_binding.dart';
import 'package:krsonline/app/modules/krs/views/krs_view.dart';
import 'package:krsonline/app/modules/login/bindings/login_binding.dart';
import 'package:krsonline/app/modules/login/views/login_view.dart';
import 'package:krsonline/app/modules/nilai/bindings/nilai_binding.dart';
import 'package:krsonline/app/modules/nilai/views/nilai_view.dart';
import 'package:krsonline/app/modules/pembayaran/bindings/pembayaran_binding.dart';
import 'package:krsonline/app/modules/notifikasi/views/notifikasi_view.dart';
import 'package:krsonline/app/modules/pembayaran/views/pembayaran_view.dart';
import 'package:krsonline/app/modules/profil/bindings/profil_binding.dart';
import 'package:krsonline/app/modules/profil/views/profil_view.dart';
import 'package:krsonline/app/modules/riwayat/bindings/riwayat_binding.dart';
import 'package:krsonline/app/modules/riwayat/views/riwayat_view.dart';
import 'package:krsonline/app/modules/skripsi/bindings/skripsi_binding.dart';
import 'package:krsonline/app/modules/skripsi/views/skripsi_view.dart';
import 'package:krsonline/app/modules/wisuda/bindings/wisuda_binding.dart';
import 'package:krsonline/app/modules/wisuda/views/wisuda_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.INFORMASI,
      page: () => InformasiView(),
      binding: InformasiBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.KRS,
      page: () => KrsView(),
      binding: KrsBinding(),
    ),
    GetPage(
      name: _Paths.NILAI,
      page: () => NilaiView(),
      binding: NilaiBinding(),
    ),
    GetPage(
      name: _Paths.JADWAL,
      page: () => JadwalView(),
      binding: JadwalBinding(),
    ),
    GetPage(
      name: _Paths.BTQ,
      page: () => BtqView(),
      binding: BtqBinding(),
    ),
    GetPage(
      name: _Paths.SKRIPSI,
      page: () => SkripsiView(),
      binding: SkripsiBinding(),
    ),
    GetPage(
      name: _Paths.KKN,
      page: () => KknView(),
      binding: KknBinding(),
    ),
    GetPage(
      name: _Paths.WISUDA,
      page: () => WisudaView(),
      binding: WisudaBinding(),
    ),
    GetPage(
      name: _Paths.KERJAPRAKTIK,
      page: () => KerjapraktikView(),
      binding: KerjapraktikBinding(),
    ),
    GetPage(
      name: _Paths.KONFIRMASI,
      page: () => KonfirmasiView(),
      binding: KonfirmasiBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_KRS,
      page: () => DetailKrsView(),
      binding: DetailKrsBinding(),
    ),
    GetPage(
      name: _Paths.PEMBAYARAN,
      page: () => PembayaranView(),
      binding: PembayaranBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFIKASI,
      page: () => NotifikasiView(),
    ),
  ];
}
