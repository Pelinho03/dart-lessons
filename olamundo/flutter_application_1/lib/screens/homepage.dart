import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Page")),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text("Hello World")),
    );
  }
}
