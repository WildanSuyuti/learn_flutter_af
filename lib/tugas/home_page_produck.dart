import 'package:flutter/material.dart';
import 'package:learn_flutter/tugas/detail_product.dart';
import 'package:learn_flutter/tugas/pruduct.dart';

class HomePageProduct extends StatefulWidget {
  const HomePageProduct({Key? key}) : super(key: key);

  @override
  State<HomePageProduct> createState() => _HomePageProductState();
}

class _HomePageProductState extends State<HomePageProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      appBar: AppBar(
        backgroundColor: const Color(0xff1E1E1E),
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Image.asset('assets/icons/line.png'),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  'assets/icons/Vector tas.png',
                  width: 22,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Image.asset(
                  'assets/images/Profile.png',
                  width: 35,
                ),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(children: [
          SizedBox(
            height: 222,
            width: 323,
            child: Stack(
              children: [
                Positioned(
                  left: 50,
                  child: Image.asset(
                    'assets/images/fruits.png',
                    height: 200,
                    width: 340,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  margin: const EdgeInsets.only(top: 25),
                  width: 298,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text('O F F E R',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffD3A888),
                                  fontWeight: FontWeight.bold)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text('Discount up to 40% Off',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 14),
                          child: Text(
                              'In honor of World Health Day\nWe’d like to give you this amazing\noffers.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              maxLines: 3),
                        ),
                        ButtonTheme(
                            height: 34,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: MaterialButton(
                              onPressed: () {},
                              color: const Color(0xffEEAC5C),
                              child: const Text('View Offers'),
                            ))
                      ]),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Recommended Fruits',
                  style: TextStyle(color: Colors.grey, fontSize: 20)),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Text('View All',
                          style: TextStyle(color: Color(0xffD3A888))),
                      Icon(Icons.arrow_forward_ios_sharp,
                          color: Color(0xffD3A888)),
                    ],
                  ))
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return DetailProductPage();
                    },
                  ));
                },
                child: const Product(
                  isPinneaple: true,
                    name: 'Pinneaple',
                    price: 'Rp. 80.000',
                    rate: '5.0',
                    fruit1: 'assets/images/pinneaple2.png',
                    fruit2: 'assets/images/pinneaple.png'),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Product(
                      name: 'Apple',
                      price: 'Rp. 25.000',
                      rate: '4.7',
                      fruit1: 'assets/images/apple2.png',
                      fruit2: 'assets/images/apple.png')),
            ],
          ),
        ]),
      ),
    );
  }
}
