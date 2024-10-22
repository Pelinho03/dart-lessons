import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home Page')),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.red, border: Border()),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navega para a página About
                Navigator.pushNamed(context, '/about');
              },
              child: const Text('Ir para About Page'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // Pode adicionar mais navegações ou funcionalidades aqui
                // Neste caso, vamos apenas mostrar uma mensagem
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Center(child: Text('Outro botão pressionado!'))),
                );
              },
              child: const Text('Outro Botão'),
            ),
          ],
        ),
      ),
    );
  }
}
