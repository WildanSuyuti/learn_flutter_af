import 'package:flutter/material.dart';
import 'package:learn_flutter/tugas%202/previous_order.dart';
import 'package:learn_flutter/tugas%202/item_card.dart';

class PreviousOrderPage extends StatefulWidget {
  const PreviousOrderPage({Key? key}) : super(key: key);

  @override
  State<PreviousOrderPage> createState() => _PreviousOrderPageState();
}

class _PreviousOrderPageState extends State<PreviousOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
/*      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(top: 8, left: 15),
          child: Text(
            'Previous Order',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),*/
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 8, left: 30),
              child: const Text(
                'Previous Order',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            const PreviousOrder(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                  child: Text(
                    'Popular Deals',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Stack(children: [
                    Row(
                      children: const [
                        ItemCard(
                            isLove: true,
                            name: 'Strawberries',
                            image: 'assets/images/strawberry.png',
                            price: '10',
                            star: '4.8'),
                        ItemCard(
                            isLove: true,isOrder: false,
                            name: 'Fried Chips',
                            image: 'assets/images/chips.png',
                            price: '12',
                            star: '4.8')
                      ],
                    ),
                    Positioned(
                      top: 15,
                      right: 190,
                      child: Transform.rotate(
                        angle: 0.9,
                        child: Container(
                          height: 23,
                          width: 100,
                          color: const Color(0xffEA7173),
                          child: const Center(
                            child: Text('5% OFF',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    )
                  ]),
                  Row(
                    children: const [
                      ItemCard(
                          isLove: false,
                          name: 'Moder Chair',
                          image: 'assets/images/chair.png',
                          price: '10',
                          star: '4.8'),
                      ItemCard(
                          isLove: false,
                          name: 'LG washing machine',
                          image: 'assets/images/washing.png',
                          price: '10',
                          star: '4.8')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
