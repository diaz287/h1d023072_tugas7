import 'package:flutter/material.dart';
import 'package:h1d023072_tugas7/components/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About DeepCoin')),
      drawer: const SideMenu(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.code, size: 80, color: Colors.amber),
            SizedBox(height: 20),
            Text('Developed by H1D023072'),
            Text('Sistem Informasi Unsoed'),
          ],
        ),
      ),
    );
  }
}
