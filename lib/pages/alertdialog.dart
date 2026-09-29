import 'package:flutter/material.dart';
import '../styles/alertdialog_styles.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({super.key});

  void _mostrarDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmação'),
          content: const Text(
            'Deseja confirmar esta ação?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Confirmar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog'),
        backgroundColor: AlertDialogStyles.backgroundColor,
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