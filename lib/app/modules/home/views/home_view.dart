import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ruang_bicara/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ruang Bicara',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.blue,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello, welcome',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Apa itu Ruang Bicara ?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Aplikasi Ruang Bicara ini adalah platform bimbingan konseling online khusus untuk pelajar. Dengan antarmuka yang mudah digunakan, pengguna dapat menghubungi konselor melalui chat atau pesan teks untuk mendapatkan dukungan emosional dan psikologis. Aplikasi ini juga membantu pengguna mengatasi tantangan akademis dan pribadi dengan aman dan nyaman. Privasi pengguna dijamin, memastikan kenyamanan dalam setiap sesi konseling.',
              style: TextStyle(fontSize: 14.0),
            ),
            const SizedBox(height: 32.0),
            const Text(
              'Check Our Konselor',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: List.generate(
                  4,
                  (index) => KonselorCard(
                    name: 'Dr supratman',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KonselorCard extends StatelessWidget {
  final String name;

  const KonselorCard({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.account_circle,
              size: 64.0,
            ),
            const SizedBox(height: 16.0),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.CHAT);
                  },
                  child: const Text('Chat'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.PROFILE);
                  },
                  child: const Text('Profile'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
