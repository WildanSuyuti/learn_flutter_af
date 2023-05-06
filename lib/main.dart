import 'package:flutter/material.dart';
import 'package:learn_flutter/row/row_demo_page.dart';
import 'package:learn_flutter/tugas%202/home_hypermart.dart';
import 'package:learn_flutter/tugas%202/previous_order_page.dart';
import 'package:learn_flutter/tugas/detail_product.dart';
import 'package:learn_flutter/tugas/home_page_produck.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      // home: const LoginPage(),
      home:  PreviousOrderPage()
    );
  }
}

class LoginPagePurple extends StatelessWidget {
  const LoginPagePurple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100, bottom: 8),
              width: double.infinity,
              child: const Text(
                'Welcome,',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                'Glade To See You!,',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

