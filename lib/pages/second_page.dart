import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/first_page.dart';
import 'package:learn_flutter/pages/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  static const String route = '/second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left),
        ),
        title: const Text('Second Route'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Kembali'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
/*                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdPage()),
                  );*/
                  // Navigator.pushNamed(context, '/third');
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/third',
                    ModalRoute.withName(FirstPage.route),
                  );
                },
                child: const Text('Buka Halaman Ketiga'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
