import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruang_bicara/app/modules/login/views/start_view.dart';
import 'package:ruang_bicara/app/modules/profile/views/profile_view.dart';
import 'package:ruang_bicara/app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ruang Bicara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Tentukan halaman awal atau rute awal
      home: const HomeScreen(), // Mengarahkan ke halaman Start (HomeScreen)
      getPages: AppPages.routes, // Gunakan routing dari AppPages
    );
  }
}
