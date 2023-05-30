import 'package:flutter/material.dart';

import '10Send Money.dart';
import '12Top up.dart';
import '19Withdarw.dart';

class Balance9 extends StatefulWidget {
  const Balance9({Key? key}) : super(key: key);

  @override
  State<Balance9> createState() => _Balance9State();
}

class _Balance9State extends State<Balance9> {
  List name = [SendMoney10(), Withdarw19(), TopUP12(), SizedBox()];
  List imag = [
    "assets/images/Group 1.png",
    "assets/images/Group 2.png",
    "assets/images/Group 3.png",
    "assets/images/Mask group 3.png",
  ];
  List tex = ["Transfer", "Withdraw", "Top up", "Deposit"];

  List text1 = ["Paypall  ", "Apple    ", "Mcdonalds", "Amazon   "];
  List text2 = ["24 Mar 2022", "25 Mar 2022", "26 Mar 2022", "27 Mar 2022"];
  List text3 = ["+0.54915 BTC", "+0.75962 BTC", "+0.65841 BTC", "+0.47865 BTC"];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.35,
                  width: width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/Group 287.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Image.asset("assets/images/Group 286.png",
                      fit: BoxFit.cover),
                ),
                Container(
                  height: height * 0.66,
                  width: width * 1,
                ),
                Positioned(
                  top: 280,
                  child: Container(
                    height: height * 0.66,
                    width: width * 1,
                    decoration: BoxDecoration(
                      color: Color(0xffEFF2F4),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: height * 0.030),
                          Text(
                            "Operations",
                            style: TextStyle(
                                color: Color(0xff010101),
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: height * 0.030),
                          Row(
                            children: List.generate(
                              4,
                              (index) => Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: InkResponse(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => name[index],
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: height * 0.080,
                                        width: width * 0.18,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(imag[index]),
                                              scale: 0.70),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.015),
                                  Text(tex[index]),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.020),
                          Text(
                            "Recent Transactions",
                            style: TextStyle(
                                color: Color(0xff010101),
                                fontSize: 23,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: height * 0.010),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: List.generate(
                                  4,
                                  (index) => Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15),
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Colors.white,
                                          child: Image.asset(
                                              "assets/images/Group 273.png"),
                                        ),
                                      ),
                                      SizedBox(width: width * 0.070),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 19,
                                            width: 300,
                                            child: Row(
                                              children: [
                                                Text(
                                                  text1[index],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15),
                                                ),
                                                Spacer(),
                                                Text(text2[index]),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: height * 0.010),
                                          Text(
                                            text3[index],
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black38),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
