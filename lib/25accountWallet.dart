import 'package:flutter/material.dart';

import '24Wallet.dart';
import '30Add new cards.dart';

class accountWallet25 extends StatefulWidget {
  const accountWallet25({Key? key}) : super(key: key);

  @override
  State<accountWallet25> createState() => _accountWallet25State();
}

class _accountWallet25State extends State<accountWallet25> {
  List colorcontiner = [
    Colors.green.withOpacity(0.5),
    Colors.deepOrangeAccent.shade100,
    Color(0xff1a237e),
    Colors.blue.withOpacity(0.5)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffeeeeee),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: InkResponse(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Text(
                    "←",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 75),
                child: Text(
                  "Wallet",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      fontFamily: "Signi"),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 65,
            width: 345,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28), color: Colors.white),
            child: Row(
              children: [
                SizedBox(width: 50),
                InkResponse(
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
                    "Cards",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
                SizedBox(width: 60),
                Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepOrangeAccent.shade100),
                  child: Center(
                    child: Text(
                      "Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 35),
          SizedBox(
            height: 175,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkResponse(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addnewcards30(),
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 170,
                    width: 300,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: colorcontiner[index],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 23, top: 20),
                          child: Row(
                            children: [
                              Text(
                                "Visa Card",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17),
                              ),
                              SizedBox(width: 135),
                              Text(
                                "Visa",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22, top: 20),
                          child: Text(
                            "\$3500.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 38, left: 23),
                          child: Text(
                            "**3298",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 230),
                          child: Text(
                            "Digital",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Card Number"),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 23),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black26)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 30),
                child: Container(
                  width: 160,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      label: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Expire Date"),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 23),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black26)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 30),
                child: Container(
                  width: 160,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      label: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("CVC/CVV"),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 23),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black26)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: TextField(
              decoration: InputDecoration(
                  label: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Cardholder Name"),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 23),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black26)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: TextField(
              decoration: InputDecoration(
                  label: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Adress"),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 23),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black26)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
        ],
      ),
    );
  }
}
