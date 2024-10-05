import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruang_bicara/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:
              CrossAxisAlignment.start, // Untuk menyelaraskan ke kiri
          children: [
            SizedBox(height: 60),
            Text(
              'Pilih Sebagai',
              style: TextStyle(
                fontSize: 50, // Ukuran font lebih besar
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left, // Menyelaraskan teks ke kiri
            ),
            SizedBox(height: 8), // Spasi antara teks
            Text(
              'Apa Anda',
              style: TextStyle(
                fontSize: 50, // Ukuran font lebih besar
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left, // Menyelaraskan teks ke kiri
            ),
            SizedBox(height: 8), // Spasi antara teks
            Text(
              'Login',
              style: TextStyle(
                fontSize: 50, // Ukuran font lebih kecil
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left, // Menyelaraskan teks ke kiri
            ),
            SizedBox(height: 50), // Spasi sebelum tombol
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.LOGIN_GURU);
              },
              child: Text('Guru Pembimbing'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            const Center(
              child: Text('atau', style: TextStyle(fontSize: 16)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.LOGIN_SISWA);
              },
              child: Text('Siswa'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
