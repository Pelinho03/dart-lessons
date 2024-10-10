import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homepage.dart';

class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

void main() {
  runApp(HelloApp());
}
