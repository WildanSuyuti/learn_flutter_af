import 'package:flutter/material.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2C2C),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff2C2C2C),
        leading: const Icon(Icons.arrow_back_outlined,
            color: Color(0xffA8A8A8), size: 30),
        actions: [
          Center(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff494949),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 14,
                  child: Image.asset(
                    'assets/icons/Vector tas.png',
                    width: 24,
                    height: 24,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: Center(
            child: Container(
              child: Column(children: const [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 12,
                  ),
                  child: Text(
                    'F   R   U   I   T    ',
                    style: TextStyle(color: Color(0xffD2AE82), fontSize: 16),
                  ),
                ),
                Text(
                  'Pinneaple',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                )
              ]),
            ),
          ),
        ),
        Stack(children: [
          Container(
            margin: const EdgeInsets.only(top: 110),
            height: 475,
            width: 435,
            decoration: const BoxDecoration(
                color: Color(0xff1E1E1E),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(170),
                    topRight: Radius.circular(170))),
          ),
          Positioned(
              left: 170,
              top: 50,
              child: Transform.scale(
                scale: 1.5,
                child: Image.asset(
                  'assets/images/pinneaple2.png',
                ),
              )),
          Positioned(
              left: 110,
              child: Transform.scale(
                scale: 1.4,
                child: Image.asset(
                  'assets/images/pinneaple.png',
                ),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 250, left: 25),
                child: Row(
                  children: [
                    const Text(
                      'Rp 80.000',
                      style: TextStyle(color: Color(0xffD2AE82), fontSize: 40),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 29, left: 3, right: 17),
                      child: Text(
                        'Per Kg',
                        style:
                            TextStyle(color: Color(0xffA8A8A8), fontSize: 16),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                              color: const Color(0xff2C2C2C),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Positioned(
                            top: 18,
                            left: 15,
                            child: Image.asset('assets/icons/love.png'))
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Star(),
                  ),
                  Star(),
                  Star(),
                  Star(),
                  Star(),
                  Text(
                    '5.0',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 34),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: const Color(0xff2C2C2C),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const Text(
                                'Quality',
                                style: TextStyle(color: Colors.white),
                              ),
                              const Text(
                                'Assurance',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Positioned(
                              top: 20,
                              left: 20,
                              child: Image.asset('assets/icons/hand.png'))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 34),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: const Color(0xff2C2C2C),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const Text(
                                'Fast',
                                style: TextStyle(color: Colors.white),
                              ),
                              const Text(
                                'Delivery',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Positioned(
                              top: 23,
                              left: 25,
                              child: Image.asset('assets/icons/car.png'))
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 72,
                              width: 72,
                              decoration: BoxDecoration(
                                  color: const Color(0xff2C2C2C),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            const Text(
                              'Best-in',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              'Taste',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Positioned(
                            top: 23,
                            left: 23,
                            child: Image.asset('assets/icons/knife.png'))
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 22, right: 45, left: 30),
                    child: Stack(
                      children: [
                        Container(
                          height: 49,
                          width: 139,
                          decoration: BoxDecoration(
                              color: const Color(0xff2C2C2C),
                              borderRadius: BorderRadius.circular(13)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 10),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.minimize_sharp,
                                color: Colors.white,
                              ),
                              Text(
                                '    7    ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Stack(children: [
                      Container(
                        height: 56,
                        width: 138,
                        decoration: BoxDecoration(
                            color: const Color(0xffEEAC5C),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 18),
                        child: Row(
                          children: const [
                            Text(
                              'Go to Cart  ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w800),
                            ),
                            Icon(
                              Icons.navigate_next_outlined,
                            )
                          ],
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ],
          )
        ]),
      ]),
    );
  }
}

class Star extends StatelessWidget {
  const Star({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Image.asset('assets/icons/star.png'),
    );
  }
}
