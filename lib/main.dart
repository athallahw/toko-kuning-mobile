import 'package:flutter/material.dart';
import 'package:toko_kuning/screens/login.dart'; // Ganti dengan nama aplikasi Anda
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Product Management',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue, // Gunakan warna utama sesuai preferensi
          ).copyWith(secondary: Colors.lightBlueAccent),
        ),
        home: const LoginPage(), // Halaman awal adalah LoginPage
      ),
    );
  }
}
