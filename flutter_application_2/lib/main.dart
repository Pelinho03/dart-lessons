import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routes Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(), // Tela inicial
      routes: {
        '/about': (context) =>
            const AboutPage(), // Definição da rota para AboutPage
      },
    );
  }
}
