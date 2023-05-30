import 'package:flutter/material.dart';

class Notifcation23 extends StatefulWidget {
  const Notifcation23({Key? key}) : super(key: key);

  @override
  State<Notifcation23> createState() => _Notifcation23State();
}

class _Notifcation23State extends State<Notifcation23> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_back_rounded, size: 35),
                  SizedBox(width: width * 0.20),
                  Text(
                    "Notifcation",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff011A51)),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.060),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Recent",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: height * 0.020),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: height * 0.07,
                    width: width * 0.15,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/images/Transfer.png",
                      scale: 0.60,
                    ),
                  ),
                  SizedBox(width: width * 0.030),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Tansfer",
                            style: TextStyle(
                                color: Color(0xffFF897E),
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          Text(
                            " You have transferred an",
                            style: TextStyle(
                              color: Color(0xffA6A2A2),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "amount \$876 to Jasson sterek",
                        style: TextStyle(
                          color: Color(0xffA6A2A2),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.010),
            Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset("assets/images/Top Up.png",
                            fit: BoxFit.cover),
                      ),
                      SizedBox(width: width * 0.030),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Top Up",
                                style: TextStyle(
                                    color: Color(0xffFF897E),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              Text(
                                " You have top up an",
                                style: TextStyle(
                                  color: Color(0xffA6A2A2),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "amount \$20 to shoppe pay",
                            style: TextStyle(
                              color: Color(0xffA6A2A2),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.050),
                  Text(
                    "Yesterday",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: height * 0.020),
                  Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.15,
                        child: Image.asset("assets/images/Shopping.png",
                            fit: BoxFit.cover),
                      ),
                      SizedBox(width: width * 0.030),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Shopping",
                                style: TextStyle(
                                    color: Color(0xffFF897E),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              Text(
                                " you shop for shoes",
                                style: TextStyle(
                                  color: Color(0xffA6A2A2),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "on Gemolis.com",
                            style: TextStyle(
                              color: Color(0xffA6A2A2),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.020),
                  Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.15,
                        child: Image.asset("assets/images/Voucher.png",
                            fit: BoxFit.cover),
                      ),
                      SizedBox(width: width * 0.030),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Voucher",
                                style: TextStyle(
                                    color: Color(0xffFF897E),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              Text(
                                " You pay the electric",
                                style: TextStyle(
                                    color: Color(0xffA6A2A2), fontSize: 18),
                              ),
                            ],
                          ),
                          Text(
                            "voucher amount \$10 ",
                            style: TextStyle(
                                color: Color(0xffA6A2A2), fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.020),
                  Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.15,
                        child: Image.asset("assets/images/Grab Pay.png",
                            fit: BoxFit.cover),
                      ),
                      SizedBox(width: width * 0.030),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Grab Pay",
                                style: TextStyle(
                                    color: Color(0xffFF897E),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              Text(
                                " You pay the Grab pay",
                                style: TextStyle(
                                    color: Color(0xffA6A2A2), fontSize: 18),
                              ),
                            ],
                          ),
                          Text(
                            "amount \$15 ",
                            style: TextStyle(
                                color: Color(0xffA6A2A2), fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.020),
                  Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.15,
                        child: Image.asset("assets/images/Game TopUp.png",
                            fit: BoxFit.cover),
                      ),
                      SizedBox(width: width * 0.030),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Game Top up",
                                style: TextStyle(
                                    color: Color(0xffFF897E),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              Text(
                                " You pay the Game",
                                style: TextStyle(
                                    color: Color(0xffA6A2A2), fontSize: 18),
                              ),
                            ],
                          ),
                          Text(
                            "top up amount \$25",
                            style: TextStyle(
                                color: Color(0xffA6A2A2), fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.020),
                  Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.15,
                        child: Image.asset("assets/images/Add card.png",
                            fit: BoxFit.cover),
                      ),
                      SizedBox(width: width * 0.030),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Add card",
                                style: TextStyle(
                                    color: Color(0xffFF897E),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              Text(
                                " You have add card stela",
                                style: TextStyle(
                                    color: Color(0xffA6A2A2), fontSize: 18),
                              ),
                            ],
                          ),
                          Text(
                            "bank",
                            style: TextStyle(
                                color: Color(0xffA6A2A2), fontSize: 18),
                          ),
                        ],
                      ),
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
