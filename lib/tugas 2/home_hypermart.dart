import 'package:flutter/material.dart';
import 'package:learn_flutter/tugas%202/previous_order.dart';

class HomeHyperMart extends StatefulWidget {
  const HomeHyperMart({Key? key}) : super(key: key);

  @override
  State<HomeHyperMart> createState() => _HomeHyperMartState();
}

class _HomeHyperMartState extends State<HomeHyperMart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: SafeArea(
              child: Row(
                children: [
                  const Text('Eng',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                  const Icon(Icons.keyboard_arrow_down_outlined,
                      color: Colors.black, size: 20),
                  Stack(children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE8EFF3),
                      ),
                    ),
                    Positioned(
                        left: 7,
                        top: 5,
                        child: Image.asset('assets/icons/bell.png'))
                  ])
                ],
              ),
            ),
          )
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: RichText(
              text: const TextSpan(
                  text: 'Hyper',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xffFDAA5D),
                  ),
                  children: [
                TextSpan(
                    text: 'Mart', style: TextStyle(color: Color(0xff4AB7B6)))
              ])),
        ),
      ),
      body: Column(children: [
        location(),
        search(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffBFDAC8),
                ),
                width: 100,
                height: 140,
              ),
              Stack(children: [
                Expanded(
                    child: Image.asset(
                  'assets/images/back.png',
                  fit: BoxFit.cover,
                )),
                Positioned(
                  bottom: -75,
                  child: Container(
                    height: 112,
                    width: 112,
                    decoration: BoxDecoration(
                        color: const Color(0xff1CBC5C).withOpacity(0.11),
                        shape: BoxShape.circle),
                  ),
                ),
                Positioned(
                  top: -70,
                  right: -50,
                  child: Container(
                      height: 146,
                      width: 146,
                      decoration: BoxDecoration(
                          color: const Color(0xff1CBC5C).withOpacity(0.13),
                          shape: BoxShape.circle)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 58),
                  child: RichText(
                    text: const TextSpan(
                        text: 'Happy Weekend\n',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                        children: [
                          TextSpan(
                              text: '25% OFF\n',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '*for All Menus',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black38))
                        ]),
                  ),
                )
              ]),
              Container(
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff6ECB9E)),
                width: 100,
                height: 140,
              )
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 25, left: 30, right: 30, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               const Text(
                'Categories',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              CategoriesWidget(
                  text: 'Groceries',
                  color: const Color(0xff4AB7B6),
                  image: 'assets/icons/vec1.png'),
              const SizedBox(width: 10),
              CategoriesWidget(
                  text: 'Appliances',
                  color: const Color(0xff4B9DCB),
                  image: 'assets/icons/vec1.png'),
              const SizedBox(width: 10),
              CategoriesWidget(
                  text: 'Fasion',
                  color: const Color(0xffAF558B),
                  image: 'assets/icons/tshirt.png'),
              const SizedBox(width: 10),
              CategoriesWidget(
                  text: 'Furniture',
                  color: const Color(0xffA187D9),
                  image: 'assets/icons/vec1.png')
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 15, left: 35, top: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Previous Order',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
        Stack(children: [
          PreviousOrder(),
          Positioned(left: 160,top: 10,
            child: Container(
              width: 53,
              height: 53,
              decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 3),
                  color: const Color(0xffFDAA5D),
                  borderRadius: BorderRadius.circular(50)),
              child: Image.asset('assets/icons/basket.png'),
            ),
          )
        ])
      ]),
    );
  }
}




Widget location() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15, left: 25),
    child: Row(children: [
      Stack(
        children: [
          Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4AB7B6))),
          Positioned(
              top: 12, left: 15, child: Image.asset('assets/icons/loc.png'))
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 150),
        child: RichText(
          text: const TextSpan(
              text: 'Bengaluru\n',
              style: TextStyle(fontSize: 10, color: Colors.black),
              children: [
                TextSpan(
                    text: 'BTM Layout, 500628', style: TextStyle(fontSize: 12))
              ]),
        ),
      ),
      const Icon(Icons.arrow_forward_ios_sharp)
    ]),
  );
}

Widget search() {
  return Container(
    width: 318,
    margin: const EdgeInsets.only(right: 15, bottom: 20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffEFF1F3)),
    child: Row(
      children: [
        const Expanded(
            child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, size: 30, color: Colors.black38),
              border: InputBorder.none,
              hintText: 'Search anything...',
              isDense: true,
              contentPadding: EdgeInsets.all(0)),
          textAlignVertical: TextAlignVertical.center,
        )),
        Container(color: Colors.grey, height: 22, width: 1),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Image.asset('assets/icons/mic.png'),
        )
      ],
    ),
  );
}

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget(
      {Key? key, required this.text, required this.color, required this.image})
      : super(key: key);

  final String text;
  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      height: 86,
      width: 80,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ]),
    );
  }
}
