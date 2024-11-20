import 'package:flutter/material.dart';
import 'package:toko_kuning/screens/menu.dart';
import 'package:toko_kuning/screens/productentry_form.dart';
import 'package:toko_kuning/screens/list_productentry.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Aplikasi Manajemen Produk',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Kelola produkmu dengan mudah dan efisien!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_box),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ProductEntryFormPage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductEntryFormPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.list_alt),
            title: const Text('Daftar Produk'),
            onTap: () {
              // Route menu ke halaman daftar produk
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductEntryPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
