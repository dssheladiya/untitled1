import 'package:flutter/material.dart';

import '16_27Electric.dart';

class Statistic26 extends StatefulWidget {
  const Statistic26({Key? key}) : super(key: key);

  @override
  State<Statistic26> createState() => _Statistic26State();
}

class _Statistic26State extends State<Statistic26> {
  List statics = ["Day", "Week", "Month", "Years"];
  List indexlist = [7, 4, 12, 6];
  List<List> staticslistall = [
    [
      "sundey",
      "mondey",
      "tuesdey",
      "wednesdey",
      "thirsdey",
      "fridey",
      "saturdey"
    ],
    ["1 Week", "2 Week", "3 Week", "4 Week"],
    [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sup",
      "oct",
      "nuv",
      "Des"
    ],
    ["2020", "2021", "2022", "2023", "2024", "2025"],
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkResponse(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Electric16_27(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "←",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Text(
                    "Statistic",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        fontFamily: "Signi"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text(
                "Current Balance",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7, left: 23),
              child: Row(
                children: [
                  Text(
                    "\$7800.50",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Icon(Icons.arrow_downward,
                        size: 16, color: Colors.deepOrangeAccent.shade200),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "5,25%",
                      style: TextStyle(
                          color: Colors.deepOrangeAccent.shade200,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                children: List.generate(
                  4,
                  (index) => Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: InkResponse(
                        onTap: () {
                          setState(() {
                            selected = index;
                          });
                        },
                        child: Text(
                          statics[index],
                          style: TextStyle(
                              color: selected == index
                                  ? Colors.black
                                  : Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Image.asset("assets/images/Group.png",
                scale: 0.90, height: 250, width: 415),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                  indexlist[selected],
                  (index) => Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        staticslistall[selected][index],
                        style: TextStyle(
                            color: selected == index
                                ? Colors.deepOrangeAccent.shade100
                                : Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Container(
                    height: 73,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black26),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Group 304.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      title: Text(
                        "Income",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "\$3460",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Container(
                    height: 73,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black26),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Color(0xff1a237e),
                          image: DecorationImage(
                              image: AssetImage("assets/images/Line 20.png"),
                              scale: 0.70),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      title: Text(
                        "Outcome",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "\$2500",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 27),
              child: Row(
                children: [
                  Text(
                    "Spendings",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 23),
                  ),
                  SizedBox(width: 210),
                  Icon(Icons.more_horiz, size: 28, color: Colors.grey)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 35),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xfffffde7).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 9, left: 11),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  child: Icon(Icons.lock_outline,
                                      color: Colors.deepOrangeAccent.shade100),
                                  radius: 20,
                                  backgroundColor: Colors.white),
                              SizedBox(width: 15),
                              Text(
                                "Shopping",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45, top: 7),
                          child: Row(
                            children: [
                              Text(
                                "\$250.00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 10),
                              Stack(
                                children: [
                                  Image.asset("assets/images/Ellipse 15.png"),
                                  Positioned(
                                    top: 7,
                                    left: 4,
                                    child: Text(
                                      "65%",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 90,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xfffffde7).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 9, left: 11),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.deepOrangeAccent.shade100,
                                  ),
                                  radius: 20,
                                  backgroundColor: Colors.white),
                              SizedBox(width: 15),
                              Text(
                                "Grocery",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45, top: 7),
                          child: Row(
                            children: [
                              Text(
                                "\$300.00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 10),
                              Stack(
                                children: [
                                  Image.asset("assets/images/Ellipse 15.png"),
                                  Positioned(
                                    top: 7,
                                    left: 4,
                                    child: Text(
                                      "85%",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
