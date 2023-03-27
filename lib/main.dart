import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/first_page.dart';
import 'package:learn_flutter/pages/form_field_page.dart';
import 'package:learn_flutter/pages/second_page.dart';
import 'package:learn_flutter/pages/third_page.dart';

main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        FirstPage.route: (context) => const FirstPage(),
        SecondPage.route: (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
        FormFieldPage.route: (context) => const FormFieldPage(),
      },
    );
  }
}
