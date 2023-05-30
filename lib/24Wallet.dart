import 'package:flutter/material.dart';

class wallet24 extends StatefulWidget {
  const wallet24({Key? key}) : super(key: key);

  @override
  State<wallet24> createState() => _wallet24State();
}

class _wallet24State extends State<wallet24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkResponse(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Icon(Icons.arrow_back, size: 35),
                  ),
                  SizedBox(width: 115),
                  Text(
                    "Wallet ",
                    style: TextStyle(
                        color: Color(0xff011a51),
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Image.asset("assets/images/Group 259.png", scale: 0.80),
              SizedBox(height: 40),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/Income.png", scale: 0.91),
                      Image.asset("assets/images/exp inc card.png",
                          scale: 0.91),
                    ],
                  ),
                  Image.asset("assets/images/balance is.png", scale: 0.98),
                ],
              ),
              SizedBox(height: 30),
              Text("Analytics",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
              SizedBox(height: 30),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    // InkResponse(
                    //   onTap: () {
                    //     setState(() {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => Electric17(),
                    //         ),
                    //       );
                    //     });
                    //   },
                    //   child:
                    Text(
                      "Bank accounts",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                      // ),
                    ),
                    SizedBox(width: 40),
                    Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xffFF897E)),
                      child: Center(
                        child: Text(
                          "Cards",
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
              SizedBox(height: 30),
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/scan card.png"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
