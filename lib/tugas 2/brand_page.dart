import 'package:flutter/material.dart';
import 'package:learn_flutter/tugas%202/item_card.dart';

class BrandsPage extends StatelessWidget {
  const BrandsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 25, top: 10),
          child: Column(
            children: [
              Row(
                children: const [
                  ItemCard(
                      isOrder: false,
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
                      star: '4.8'),
                ],
              ),
              title(const Text(
                'Top Brands',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  card(Image.asset('assets/images/image2.png')),
                  card(Image.asset('assets/images/image3.png')),
                  card(Image.asset('assets/images/image4.png')),
                ],
              ),
              title(const Text('Exclusive Beauty Deals',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardDiscount(Image.asset('assets/images/image 7.png')),
                    cardDiscount(Image.asset('assets/images/image 6.png')),
                    cardDiscount(Image.asset('assets/images/image 9.png'))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  cardDiscount(Image.asset('assets/images/image 8.png')),
                  cardDiscount(Image.asset('assets/images/image 11.png')),
                  cardDiscount(Image.asset('assets/images/image 10.png'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget card(image) {
  return Container(
    margin: const EdgeInsets.only(bottom: 15),
    child: image,
    height: 47,
    width: 95,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
  );
}

Widget title(text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 20),
        child: text,
      ),
      const Padding(
        padding: EdgeInsets.only(right: 45),
        child: Icon(Icons.arrow_forward_ios),
      )
    ],
  );
}

Widget cardDiscount(imageProduct) {
  return Stack(
    children: [
      Container(
          margin: const EdgeInsets.only(bottom: 30),
          padding: EdgeInsets.only(bottom: 20),
          height: 70,
          width: 96,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xffEAEAEA)),
          child: imageProduct),
      Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 52,
            width: 52,
            decoration: const BoxDecoration(
                color: Color(0xff4AB7B6), shape: BoxShape.circle),
            child: const Align(
              alignment: Alignment.center,
              child: Text('Upto\n10% OFF',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 10, color: Colors.white)),
            ),
          ),
        ),
      )
    ],
  );
}
