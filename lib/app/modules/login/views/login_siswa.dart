import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ruang_bicara/app/modules/login/views/register_page.dart';

class LoginSiswa extends StatefulWidget {
  const LoginSiswa({super.key});

  @override
  _LoginSiswaState createState() => _LoginSiswaState();
}

class _LoginSiswaState extends State<LoginSiswa> {
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Fungsi untuk login
  Future<void> loginWithNIM() async {
    String nim = _nimController.text.trim();
    String password = _passwordController.text.trim();

    if (nim.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'NIM dan Password harus diisi.');
      return;
    }

    try {
      // Ambil data pengguna berdasarkan NIM
      QuerySnapshot userQuery = await _firestore
          .collection('users')
          .where('nim', isEqualTo: nim)
          .get();

      if (userQuery.docs.isEmpty) {
        Get.snackbar('Error', 'NIM tidak ditemukan.');
      } else {
        var userData = userQuery.docs.first.data() as Map<String, dynamic>;
        if (userData['password'] == password) {
          Get.snackbar('Success', 'Login berhasil.');
          // Arahkan ke halaman berikutnya setelah login sukses
          Get.toNamed('/home'); // Contoh navigasi ke halaman home setelah login
        } else {
          Get.snackbar('Error', 'Password salah.');
        }
      }
    } catch (e) {
      Get.snackbar('Error', 'Terjadi kesalahan: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Account",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 37),
            TextField(
              controller: _nimController,
              decoration: InputDecoration(
                labelText: "NIM",
                labelStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: loginWithNIM,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Login"),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("I don't have an account"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
