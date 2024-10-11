import 'package:get/get.dart';

import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_guru.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login/views/register_page.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

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
      page: () => const LoginSiswa(), // Ubah ke LoginSiswa
    ),
    GetPage(
      name: _Paths.LOGIN_GURU, // Rute baru untuk LoginSiswa
      page: () => const LoginGuru(), // Ubah ke LoginSiswa
    ),
    GetPage(
      name: _Paths.REGISTER, // Rute baru untuk LoginSiswa
      page: () => const RegisterPage(), // Ubah ke LoginSiswa
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
  ];
}
