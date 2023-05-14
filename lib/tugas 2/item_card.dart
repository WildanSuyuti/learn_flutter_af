import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key,
      required this.name,
      required this.image,
      required this.price,
      required this.star,
      this.isLove = true,
      this.isOrder = true})
      : super(key: key);

  final String name;
  final String image;
  final String price;
  final String star;
  final bool isLove;
  final bool isOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      height: 261,
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Column(children: [

        Stack(
          children: [
            Image.asset(
              image,
              height: 140,
              width: 150,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: isLove
                  ? Image.asset('assets/icons/love1.png')
                  : Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Image.asset('assets/icons/love2.png')),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Text(name, style: const TextStyle(fontSize: 14)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 60),
              child: Text(price),
            ),
            Text(star, style: const TextStyle(color: Color(0xffEA7173))),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Image.asset('assets/icons/star.png'),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: isOrder
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffEA7173)),
                      child: Image.asset('assets/icons/-.png'),
                    ),
                    const Text(('2'),
                        style: TextStyle(
                            color: Color(0xff4AB7B6),
                            fontWeight: FontWeight.bold)),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xff4AB7B6)),
                      child: Image.asset('assets/icons/+.png'),
                    )
                  ],
                )
              : Container(padding: const EdgeInsets.only(top: 8),
                  height: 36,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xffFDAA5D))),
                  child: const Text(textAlign: TextAlign.center,
                    'Add to cart',
                    style: TextStyle(
                        color: Color(0xffFDAA5D),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )),
        ),
      ]),
    );
  }
}
