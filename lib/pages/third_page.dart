import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
            SystemNavigator.pop();
          },
          icon: const Icon(Icons.chevron_left),
        ),
        title: const Text('Halaman 3'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pop(context);
            SystemNavigator.pop();
          },
          child: const Text('Kembali'),
        ),
      ),
    );
  }
}
