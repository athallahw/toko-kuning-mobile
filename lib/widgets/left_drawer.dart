import 'package:flutter/material.dart';
import 'package:toko_kuning/screens/menu.dart';
// TODO: Impor halaman MoodEntryFormPage jika sudah dibuat
import 'package:toko_kuning/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // TODO: Bagian drawer header
            decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                ),
            child: const Column(
                children: [
                    Text(
                        'Toko Kuning',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                        ),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Text(
                    "Ayo jual product mu disini!",
                    // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                    textAlign: TextAlign.center, // Center alignment
                    style: TextStyle(
                    fontSize: 15, // Ukuran font 15
                    color: Colors.black, // Warna teks putih
                    fontWeight: FontWeight.normal, // Berat font normal
                        ),
                    ),
                ],
            ),
          ),
            // TODO: Bagian routing
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Halaman Utama'),
                // Bagian redirection ke MyHomePage
                onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                        ));
                },
            ),
            ListTile(
                leading: const Icon(Icons.badge),
                title: const Text('Tambah Product'),
                // Bagian redirection ke MoodEntryFormPage
                onTap: () {
                /*
                TODO: Buatlah routing ke MoodEntryFormPage di sini,
                setelah halaman MoodEntryFormPage sudah dibuat.
                */
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductEntryFormPage(), // Routing ke halaman ProductEntryFormPage
                        ),
                    );
                },
            ),
        ],
      ),
    );
  }
}