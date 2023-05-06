import 'package:flutter/material.dart';


class PreviousOrder extends StatelessWidget {
  const PreviousOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30),
          padding: const EdgeInsets.all(10),
          width: 288,
          height: 168,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Delivered',
                    style: TextStyle(
                        fontSize: 10, color: Color((0xff14AB87)))),
                const Text('On Wed, 27 Jul 2022',
                    style: TextStyle(fontSize: 10)),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 246,
                  height: 63,
                  decoration: const BoxDecoration(
                      color: Color(0xffF7F7F7),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/avocado.png'),
                        Image.asset('assets/images/nasgor.png'),
                        Image.asset('assets/images/shampo.png'),
                        const Text(
                          '  +5\nMore',
                          style: TextStyle(fontSize: 12),
                        )
                      ]),
                ),
                Row(
                  children: [
                    const Text('Order ID : #28292999',
                        style: TextStyle(fontSize: 10)),
                    Container(
                      padding: const EdgeInsets.only(top: 7),
                      margin: const EdgeInsets.only(top: 5, left: 65),
                      decoration: const BoxDecoration(
                          color: Color(0XFF4AB7B6),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      height: 30,
                      width: 87,
                      child: const Text(
                          textAlign: TextAlign.center,
                          'Order Again',
                          style: TextStyle(
                              color: Colors.white, fontSize: 12)),
                    )
                  ],
                ),
                const Text('Final Total : ₹ 123.9')
              ]),
        ),
        Container(
          width: 30,
          height: 168,
          decoration: const BoxDecoration(
              color: Color(0xffEA7173),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: const RotatedBox(
              quarterTurns: 3,
              child: Center(
                child: Text(
                  'Order Again & Get Flat 10% OFF',
                  style: TextStyle(fontSize: 11, color: Colors.white),
                ),
              )),
        )
      ],
    );
  }
}