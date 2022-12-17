import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Home'),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Tombol telah di tekan');
            },
            icon: const Icon(Icons.notification_add),
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text(
              'test',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: const Center(
        child: Text('Ini adalah halaman home'),
      ),
    );
  }

  onPressed() {
    debugPrint('Tombol telah di tekan');
  }
}
