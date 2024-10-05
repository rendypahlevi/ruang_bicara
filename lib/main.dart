import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruang_bicara/app/modules/login/views/start_view.dart';
import 'package:ruang_bicara/app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ruang Bicara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Tentukan halaman awal atau rute awal
      home: HomeScreen(), // Mengarahkan ke halaman Start (HomeScreen)
      getPages: AppPages.routes, // Gunakan routing dari AppPages
    );
  }
}
