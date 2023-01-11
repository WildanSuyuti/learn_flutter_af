import 'package:flutter/material.dart';
import 'package:learn_flutter/learn_image_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LearnImagePage(),
    );
  }
}