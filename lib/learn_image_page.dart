import 'package:flutter/material.dart';

class LearnImagePage extends StatelessWidget {
  const LearnImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar Gambar')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.network(
                'https://www.piknikdong.com/wp-content/uploads/2021/01/Cara-Membuat-Tahu-Bulat-min.jpg',
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(top: 16),
            color: Colors.yellow,
            child: Image.asset(
              'assets/images/logo/alfurqon.png',
              width: double.infinity,
              height: 80,
              alignment: Alignment.topLeft,
              // color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
