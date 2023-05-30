import 'package:flutter/material.dart';

import '16_27Electric.dart';

class ConfirmWithdraw20 extends StatefulWidget {
  const ConfirmWithdraw20({Key? key}) : super(key: key);

  @override
  State<ConfirmWithdraw20> createState() => _ConfirmWithdraw20State();
}

//196
class _ConfirmWithdraw20State extends State<ConfirmWithdraw20> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffe0e0e0),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkResponse(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Text(
                        "⟵",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      "Withdraw",
                      style: TextStyle(
                          fontSize: 28,
                          color: Color(0xff011a51),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Signi"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Container(
                height: 550,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Confirm Withdraw",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff011a51),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 40),
                    Container(
                      height: 90,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 9, left: 18),
                            child: Text(
                              "Amount",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  fontFamily: "Signi"),
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
                                  decoration: InputDecoration(
                                    hintText: "20.00",
                                    hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19),
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
                    SizedBox(height: 30),
                    Container(
                      height: 90,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 18),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Container(
                                  height: 60,
                                  width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        label: Text("Bank Account"),
                                        hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19),
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
                                ),
                              ),
                              SizedBox(width: 24),
                              Image.asset("assets/images/Group 296 (1).png",
                                  scale: 1),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 90,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Amount",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      fontFamily: "Signi"),
                                ),
                                SizedBox(width: 180),
                                Text(
                                  "\$ 250",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Fee",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      fontFamily: "Signi"),
                                ),
                                SizedBox(width: 225),
                                Text(
                                  "Free",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Electric16_27(),
                            ),
                          );
                        });
                      },
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Color(0xffFB847C),
                      child: Text(
                        "WITHDRAW",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Electric16_27(),
                      ),
                    );
                  });
                },
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Color(0xffFB847C),
                child: Text(
                  "WITHDRAW",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
