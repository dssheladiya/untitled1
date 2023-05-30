import 'package:flutter/material.dart';

import '23Notifcation.dart';

class InternetDataPage22 extends StatefulWidget {
  InternetDataPage22({Key? key}) : super(key: key);

  @override
  State<InternetDataPage22> createState() => _InternetDataPage22State();
}

class _InternetDataPage22State extends State<InternetDataPage22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffe0e0e0),
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
                    child: Text(
                      "←",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Internet Data",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "Signi"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                height: 250,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/Mask group (5).png"),
                              radius: 28),
                          SizedBox(width: 8),
                          Text(
                            "Lori Bryson",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          Spacer(),
                          MaterialButton(
                            onPressed: () {
                              setState(() {});
                            },
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            color: Colors.deepOrangeAccent.shade100,
                            child: Text(
                              "Buy Package",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Data",
                        style: TextStyle(
                            color: Color(0xff1a237e),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "Monthly",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Text(
                            "42 GB",
                            style: TextStyle(
                                color: Color(0xff1a237e),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "12 GB",
                            style: TextStyle(
                                color: Color(0xff1a237e),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(
                          color: Color(0xff1a237e),
                          thickness: 3,
                          endIndent: 40),
                      SizedBox(height: 20),
                      Text(
                        "March 21-April 21,2022",
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "choose package",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "confirm internet Data",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 90,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Package",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Freedom internet 30 dey",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 90,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                              prefix: Text("+62"),
                              label: Text("Lori Bryson"),
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
                      SizedBox(width: 75),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.withOpacity(0.2)),
                          child:
                              Icon(Icons.perm_identity, color: Colors.indigo),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 90,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "Amount",
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            fontFamily: "Signi",
                          ),
                        ),
                        SizedBox(width: 210),
                        Text(
                          "\$ 10",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "Fee",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              fontFamily: "Signi"),
                        ),
                        SizedBox(width: 245),
                        Text(
                          "Free",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 20),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Notifcation23(),
                        ),
                      );
                    });
                  },
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  color: Color(0xffFB847C),
                  child: Text(
                    "BUY",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
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
