import 'package:flutter/material.dart';
import 'pages/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar, Menus e Diálogos',
      home: const AppBarPage(),
    );
  }
}