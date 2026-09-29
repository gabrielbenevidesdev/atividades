import 'package:flutter/material.dart';
import '../styles/simpledialog_styles.dart';

class SimpleDialogPage extends StatelessWidget {
  const SimpleDialogPage({super.key});

  void _mostrarDialog(BuildContext context) async {
    final resultado = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Escolha um idioma'),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Português');
              },
              child: const Text('Português'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Inglês');
              },
              child: const Text('Inglês'),
            ),
          ],
        );
      },
    );

    if (resultado != null && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Selecionado: $resultado'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleDialog'),
        backgroundColor: SimpleDialogStyles.backgroundColor,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _mostrarDialog(context);
          },
          child: const Text('Abrir diálogo'),
        ),
      ),
    );
  }
}