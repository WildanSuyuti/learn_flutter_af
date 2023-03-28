import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/form_field_page.dart';
import 'package:learn_flutter/pages/login_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.route);
                },
                child: const Text('Login Page'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, FormFieldPage.route);
                },
                child: const Text('Form Field Demo'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ElevatedButton(
                onPressed: () {
/*                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );*/
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('Buka Halaman Kedua'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
/*                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdPage()),
                );*/
                // Navigator.pushNamed(context, '/second');
/*                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const ThirdPage();
                }));*/

                Navigator.pushReplacementNamed(context, '/third');
              },
              child: const Text('Buka Halaman Ketiga'),
            ),
          ],
        ),
      ),
    );
  }
}
