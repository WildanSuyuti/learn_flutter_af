import 'package:flutter/material.dart';

import 'learn_button_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LearnButtonPage(),
    );
  }
}
