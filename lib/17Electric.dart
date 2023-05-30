import 'package:flutter/material.dart';

import '16_27Electric.dart';
import '18BillsEnqui.dart';
import '19Withdarw.dart';

class Electric17 extends StatefulWidget {
  const Electric17({Key? key}) : super(key: key);

  @override
  State<Electric17> createState() => _Electric17State();
}

class _Electric17State extends State<Electric17> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    InkResponse(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Electric16_27(),
                              ));
                        });
                      },
                      child: Text(
                        "←",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(width: 100),
                    Text(
                      "Wallet",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          fontFamily: "Signi"),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: Row(
                    children: [
                      SizedBox(width: 30),
                      Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff011A51)),
                        child: Center(
                          child: Text(
                            "Electricity Token",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                      ),
                      SizedBox(width: 60),
                      InkResponse(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BillsEnqui18(),
                                ),
                              );
                            });
                          },
                          child: Text("Bills",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17))),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Container(
                  height: 90,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 220,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                label: Text("Enter Token number"),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 3),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 40),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffc5cae9)),
                            child: Center(
                              child: Text(
                                "Check",
                                style: TextStyle(
                                    color: Color(0xff1a237e),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 70),
                Container(
                  height: 90,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 13, left: 18),
                        child: Text(
                          "Enter amount",
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            fontFamily: "Signi",
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 18),
                          Text(
                            "\$",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 50,
                            width: 220,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "150",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 3),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
                InkResponse(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Withdarw19(),
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 65,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepOrangeAccent.shade100),
                    child: Center(
                      child: Text(
                        "Buy",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
