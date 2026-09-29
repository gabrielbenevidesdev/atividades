import 'package:flutter/material.dart';
import '../styles/bottomsheet_styles.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  void _mostrarBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Compartilhar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('Copiar link'),
              onTap: () {
                Navigator.pop(context);
              },
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
        title: const Text('BottomSheet'),
        backgroundColor: BottomSheetStyles.backgroundColor,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _mostrarBottomSheet(context);
          },
          child: const Text('Mais opções'),
        ),
      ),
    );
  }
}