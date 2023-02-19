import 'package:flutter/material.dart';
import 'package:learn_flutter/route/first_route.dart';

main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstRoute(),
    );
  }
}
