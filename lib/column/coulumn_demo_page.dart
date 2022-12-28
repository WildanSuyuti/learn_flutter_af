import 'package:flutter/material.dart';

class ColumnDemoPage extends StatelessWidget {
  const ColumnDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Layouting dengan Column'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Ini adalah text 1'),
            const Text('Ini adalah text 2'),
            TextButton(
              onPressed: () {},
              child: const Text('Tekan'),
            ),
          ],
        ),
      ),
    );
  }
}
