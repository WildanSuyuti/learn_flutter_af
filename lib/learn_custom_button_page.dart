import 'package:flutter/material.dart';

class LearnCustomButtonPage extends StatelessWidget {
  const LearnCustomButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Membuat Tombol Dari Widget Sendiri'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.red,
            child: Text(
              'Tombol Kustom',
              style: TextStyle(color: Colors.grey[200]),
            ),
          ),
        ),
      ),
    );
  }
}
