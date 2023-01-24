import 'package:flutter/material.dart';

class LearnStackPage extends StatelessWidget {
  const LearnStackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Belajar Stack'),
      ),
      body: SizedBox(
        // color: Colors.yellow,
        width: double.infinity,
        height: 200,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.red,
                width: 200,
                height: 200,
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              bottom: 16,
              // left: 16,
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
