import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key,
    required this.name,
    required this.price,
    required this.rate,
    required this.fruit1,
    required this.fruit2,
    this.isPinneaple = false
  }) : super(key: key);

  final String name;
  final String price;
  final String rate;
  final String fruit1;
  final String fruit2;
  final bool isPinneaple;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              width: 145,
              height: 100,
              decoration: const BoxDecoration(
                  color: Color(0xff43311B),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70),
                      topLeft: Radius.circular(70))),
            ),
            if (isPinneaple ) Positioned(
                bottom: -40,
                right: -15,
                top: -20,
                child: Transform.scale(
                  scale: 1.1,
                  child: Image.asset(fruit1),
                )),
            Positioned(
                bottom: -22,
                right: 15,
                child: Transform.scale(
                  scale: 1.0,
                  child: Image.asset(
                    fruit2,
                  ),
                ))
          ],
        ),
        Container(
          width: 145,
          height: 100,
          decoration: const BoxDecoration(
              color: Color(0xff000000),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 19, right: 8),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset('assets/icons/star.png'),
                    ),
                    Text(
                      rate,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const Text(
                'F  R  U  I  T',
                style: TextStyle(color: Color(0xffEEAC5C), fontSize: 12),
              ),
              Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                price,
                style: TextStyle(color: Color(0xffD2AE82), fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'per kg',
                    style: TextStyle(color: Color(0xffA8A8A8), fontSize: 12),
                  ),
                ],
              )
            ]),
          ),
        )
      ],
    );
  }
}
