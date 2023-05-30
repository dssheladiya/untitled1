import 'package:flutter/material.dart';

import '2Registration.dart';

class Experience1 extends StatefulWidget {
  const Experience1({Key? key}) : super(key: key);

  @override
  State<Experience1> createState() => _Experience1State();
}

class _Experience1State extends State<Experience1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 40),
              Image.asset("assets/images/1.png", scale: 1.50),
              Text(
                "Flowa",
                style: TextStyle(
                    color: Color(0xff011A51),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(right: 110),
                child: Text(
                  "Experience the ",
                  style: TextStyle(color: Color(0xff011A51), fontSize: 35),
                ),
              ),
              Row(
                children: [
                  Text(
                    "easier way ",
                    style: TextStyle(
                        color: Color(0xffFF897E),
                        fontSize: 35,
                        decoration: TextDecoration.underline),
                  ),
                  Text(
                    "for",
                    style: TextStyle(color: Color(0xff011A51), fontSize: 35),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 165),
                child: Text(
                  "transaction!",
                  style: TextStyle(color: Color(0xff011A51), fontSize: 35),
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Connect your money to your",
                style: TextStyle(color: Color(0xff848484), fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                "friends & brands.",
                style: TextStyle(color: Color(0xff848484), fontSize: 20),
              ),
              SizedBox(height: 130),
              InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Registration2(),
                        ));
                  });
                },
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFB847C),
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
