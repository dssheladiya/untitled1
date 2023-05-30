import 'package:flutter/material.dart';

class Transffered11 extends StatefulWidget {
  const Transffered11({Key? key}) : super(key: key);

  @override
  State<Transffered11> createState() => _Transffered11State();
}

class _Transffered11State extends State<Transffered11> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 350),
              child: Icon(Icons.close, size: 40),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Container(
                height: height * 0.65,
                width: width * 1,
                decoration: BoxDecoration(
                  color: Color(0xff011A51),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height * 0.040),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFB847C),
                          image: DecorationImage(
                              image: AssetImage("assets/images/Vector.png"),
                              scale: 1.40)),
                    ),
                    SizedBox(height: height * 0.020),
                    Text(
                      "Transffered Succesfully",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: height * 0.020),
                    Divider(
                        color: Colors.white,
                        endIndent: 20,
                        indent: 20,
                        thickness: 1),
                    SizedBox(height: height * 0.040),
                    Row(
                      children: [
                        SizedBox(width: width * 0.040),
                        Text(
                          "Name",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Text(
                          "Rene wells",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(width: width * 0.040),
                      ],
                    ),
                    SizedBox(height: height * 0.040),
                    Row(
                      children: [
                        SizedBox(width: width * 0.040),
                        Text(
                          "Transaction ID",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.040),
                    Row(
                      children: [
                        SizedBox(width: width * 0.040),
                        Text(
                          "Amount",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Text(
                          "\$456.00",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(width: width * 0.040),
                      ],
                    ),
                    SizedBox(height: height * 0.040),
                    Row(
                      children: [
                        SizedBox(width: width * 0.040),
                        Text(
                          "Transfer cost",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Text(
                          "\$00.00",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(width: width * 0.040),
                      ],
                    ),
                    SizedBox(height: height * 0.040),
                    Row(
                      children: [
                        SizedBox(width: width * 0.040),
                        Text(
                          "Time & Date",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Text(
                          "01/03/22 , 11:00 AM",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(width: width * 0.040),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.030),
            Container(
              height: height * 0.070,
              width: width * 0.60,
              decoration: BoxDecoration(
                color: Color(0xffFB847C),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "DONE",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
