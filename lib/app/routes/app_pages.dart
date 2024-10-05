import 'package:get/get.dart';
import 'package:ruang_bicara/app/modules/login/views/login_guru.dart';
import 'package:ruang_bicara/app/modules/login/views/register_page.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login/views/login_siswa.dart'; // Ubah ke LoginSiswa

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SISWA, // Rute baru untuk LoginSiswa
      page: () => LoginSiswa(), // Ubah ke LoginSiswa
    ),
    GetPage(
      name: _Paths.LOGIN_GURU, // Rute baru untuk LoginSiswa
      page: () => LoginGuru(), // Ubah ke LoginSiswa
    ),
    GetPage(
      name: _Paths.REGISTER, // Rute baru untuk LoginSiswa
      page: () => RegisterPage(), // Ubah ke LoginSiswa
    ),
  ];
}
