import 'package:flutter/material.dart';

import '17Electric.dart';
import '21Internet Data.dart';
import '24Wallet.dart';
import '28Contact List.dart';
import '29Profile.dart';
import '6Login.dart';
//import 'bottom_navigation.dart';

class Electric16_27 extends StatefulWidget {
  const Electric16_27({Key? key}) : super(key: key);

  @override
  State<Electric16_27> createState() => _Electric16_27State();
}

class _Electric16_27State extends State<Electric16_27> {
  List one = [
    "Transfer",
    "Withdraw",
    "Top up",
    "Deposit",
    "Pay bills",
    "Pay context"
  ];
  List imag = [
    "assets/images/Group 1.png",
    "assets/images/Group 2.png",
    "assets/images/Group 3.png",
    "assets/images/Mask group 3.png",
    "assets/images/Group 1.png",
    "assets/images/Group 2.png",
  ];
  bool home = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff011A51),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage("assets/images/Mask group (5).png"),
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Rena Wells",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Rodey43@gmail.com",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile(),
                          ),
                        );
                      });
                    },
                    padding: EdgeInsets.symmetric(horizontal: 38, vertical: 11),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    color: Colors.deepOrangeAccent.shade100,
                    child: Text(
                      "Verified",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Dark mode",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Switch(
                        value: home,
                        onChanged: (value) {
                          setState(() {
                            home = value;
                          });
                        })
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 18),
              child: InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactList28(),
                      ),
                    );
                  });
                },
                child: Text(
                  "Invite Friends",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 40),
              child: InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactList28(),
                      ),
                    );
                  });
                },
                child: Text(
                  "Contact List",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 40),
              child: InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => wallet24(),
                      ),
                    );
                  });
                },
                child: Text(
                  "My Wallet",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 40),
              child: Text(
                "Change Password",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 40),
              child: InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InternetData21(),
                      ),
                    );
                  });
                },
                child: Text(
                  "About us",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 25),
              child: Row(
                children: [
                  Icon(Icons.logout, color: Colors.deepOrangeAccent.shade100),
                  InkResponse(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login6(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      " Log Out",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrangeAccent.shade100,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xffe0e0e0),
      body: Column(
        children: [
          Container(
            height: 390,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xff1a237e),
                  child: Image.asset("assets/images/Group 286.png",
                      fit: BoxFit.cover),
                ),
                Positioned(
                  top: 57,
                  left: 346,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
                Positioned(
                  top: 55,
                  left: 330,
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                Positioned(
                  top: 174,
                  left: 30,
                  child: Container(
                    height: 230,
                    width: 355,
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 18),
                              child: Text(
                                "Balance",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 18, left: 185),
                              child: Text(
                                "Active",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.deepOrangeAccent.shade100,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28, top: 18),
                          child: Text(
                            "\$7800.50",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Sigma",
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 2),
                        Divider(color: Colors.white, thickness: 1.7),
                        SizedBox(
                          height: 115,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Container(
                                      height: 53,
                                      width: 65,
                                      child: Image.asset(
                                        imag[index],
                                      ),
                                      clipBehavior: Clip.none,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      decoration: BoxDecoration(
                                        color: Color(0xffe8eaf6),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      one[index],
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Center(
            child: Text(
              "All Service",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
                fontFamily: "Signi",
              ),
            ),
          ),
          SizedBox(height: 35),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Electric17(),
                      ),
                    );
                  });
                },
                child: Container(
                  height: 55,
                  width: 55,
                  child: Image.asset(
                    "assets/images/Vector 19.png",
                    color: Color(0xffff4081),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xfff8bbd0).withAlpha(160),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(width: 12),
              Text(
                "Electric",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              SizedBox(width: 57),
              Container(
                height: 55,
                width: 55,
                child: Image.asset(
                  "assets/images/Group 123.png",
                  color: Color(0xffaa00ff),
                ),
                decoration: BoxDecoration(
                    color: Color(0xffe1bee7),
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(width: 12),
              Text(
                "Marchant",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            children: [
              SizedBox(width: 30),
              InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InternetData21(),
                      ),
                    );
                  });
                },
                child: Container(
                  height: 55,
                  width: 55,
                  child: Image.asset(
                    "assets/images/Ellipse 46.png",
                    color: Color(0xff29b6f6),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffb3e5fc).withAlpha(160),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(width: 12),
              Text(
                "Internet",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                width: 57,
              ),
              Container(
                height: 55,
                width: 55,
                child:
                    Image.asset("assets/images/Ticket.png", fit: BoxFit.cover),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(width: 12),
              Text(
                "Ticket",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            children: [
              SizedBox(width: 30),
              Container(
                height: 55,
                width: 55,
                child: Image.asset("assets/images/Mobile (1).png", scale: 0.80),
                decoration: BoxDecoration(
                    color: Color(0xffffccbc).withAlpha(160),
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(width: 12),
              Text(
                "Mobile",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              SizedBox(width: 65),
              Container(
                height: 55,
                width: 55,
                child: Image.asset("assets/images/Group 246.png",
                    fit: BoxFit.cover),
                decoration: BoxDecoration(
                    color: Color(0xffb2ebf2),
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(width: 12),
              Text(
                "Transfer",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            ],
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 135),
            child: Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  child: Image.asset("assets/images/Group 124.png"),
                  decoration: BoxDecoration(
                      color: Color(0xffa5d6a7).withAlpha(150),
                      borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(width: 12),
                Text(
                  "more",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
