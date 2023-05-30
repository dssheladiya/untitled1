import 'package:flutter/material.dart';

class Scanyourcard31 extends StatefulWidget {
  const Scanyourcard31({Key? key}) : super(key: key);

  @override
  State<Scanyourcard31> createState() => _Scanyourcard31State();
}

class _Scanyourcard31State extends State<Scanyourcard31> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_back_rounded, size: 35),
                  SizedBox(width: width * 0.15),
                  Text(
                    "Scan your card",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff011A51),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.090),
            Text("Card Number",
                style: TextStyle(color: Colors.black38, fontSize: 17)),
            SizedBox(height: height * 0.015),
            Text("0045 4768 243 0098"),
            SizedBox(height: height * 0.070),
            Container(
              height: height * 0.30,
              width: width * 0.90,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset("assets/images/31.png", fit: BoxFit.cover),
            ),
            SizedBox(height: height * 0.15),
            Container(
              height: height * 0.090,
              width: width * 0.20,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset("assets/images/Icon scan.png"),
            ),
            Text("Or"),
            SizedBox(height: height * 0.020),
            Container(
              height: height * 0.08,
              width: width * 0.90,
              decoration: BoxDecoration(
                  color: Color(0xffFB847C),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Manual",
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
