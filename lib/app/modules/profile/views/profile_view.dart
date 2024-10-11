import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruang_bicara/app/routes/app_pages.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment
            .start, // Align the content of the column to the left
        children: [
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 40, // Menambah ukuran gambar menjadi lebih besar
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            title: Text(
              'Dr Supratman',
              style: TextStyle(
                fontSize: 24, // Ukuran teks lebih besar
                fontWeight: FontWeight.bold, // Teks menjadi tebal
              ),
            ),
            subtitle: Text(
              '32 / male',
              style: TextStyle(
                fontSize: 13, // Ukuran subtitle juga diperbesar
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Sebagai konselor, saya berkomitmen untuk membantu Anda menghadapi tantangan-tantangan yang mungkin dihadapi di sekolah dan kehidupan sehari-hari. Dengan pendekatan yang empatik dan ramah, saya siap mendampingi Anda dalam mengeksplorasi masalah, mengembangkan keterampilan, dan menemukan solusi yang tepat. Mari kita bekerja sama untuk menciptakan pengalaman belajar yang lebih positif dan menyenangkan!',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 24.0), // Add horizontal padding for right shift
            child: Align(
              alignment: Alignment.centerLeft, // Align content to the left
              child: Container(
                width: screenWidth * 0.85, // Set width to 75% of screen width
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Make column content align left
                  children: [
                    Text('Details :',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue)),
                    SizedBox(height: 10),

                    // Card for 'Umur'
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Umur:'),
                            Text('32 y.o.'),
                          ],
                        ),
                      ),
                    ),

                    // Card for 'Nama'
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Nama:'),
                            Text('Dr Supratman'),
                          ],
                        ),
                      ),
                    ),

                    // Card for 'Lulusan'
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Lulusan:'),
                            Text('S2 Universitas Lampung'),
                          ],
                        ),
                      ),
                    ),

                    // Card for 'Jurusan'
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Jurusan:'),
                            Text('Psikolog'),
                          ],
                        ),
                      ),
                    ),

                    // Card for 'Lokasi'
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Lokasi:'),
                            Text('Bandar Lampung'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 24.0), // Same padding for button as details
            child: Align(
              alignment: Alignment.centerLeft, // Align button to the left
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.CHAT);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.blue, // Set the button color to light blue
                ),
                child: const Text(
                  "chat sekarang",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
