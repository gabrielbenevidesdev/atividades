import 'package:flutter/material.dart';
import '../styles/appbar_styles.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Menu selecionado'),
              ),
            );
          },
        ),
        title: const Text('AppBar'),
        centerTitle: true,
        backgroundColor: AppBarStyles.backgroundColor,
        elevation: AppBarStyles.elevation,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Pesquisar selecionado'),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Configurações selecionado'),
                ),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Exemplo de AppBar',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}