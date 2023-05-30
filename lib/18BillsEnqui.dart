import 'package:flutter/material.dart';

import '17Electric.dart';

class BillsEnqui18 extends StatefulWidget {
  const BillsEnqui18({Key? key}) : super(key: key);

  @override
  State<BillsEnqui18> createState() => _BillsEnqui18State();
}

class _BillsEnqui18State extends State<BillsEnqui18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkResponse(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Electric17(),
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 65,
                width: 345,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(width: 20),
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
                      child: Text(
                        "Electricity Token",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    SizedBox(width: 40),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff011A51)),
                      child: Center(
                        child: Text(
                          "Bills",
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
            ),
            SizedBox(height: 40),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("assets/images/Electric.png"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "\$50.00",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            Text(
              "need to be pay",
              style: TextStyle(fontSize: 15, color: Colors.black38),
            ),
            SizedBox(height: 60),
            Container(
              height: 430,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Text(
                          "Bills Enquiry",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12)),
                      child: Center(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white70,
                            radius: 25,
                            child: Image.asset("assets/images/My House.png",
                                scale: 0.20),
                          ),
                          title: Text("My House"),
                          subtitle: Text("**** *** 3980"),
                          trailing: Text(
                            "\$15",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12)),
                      child: Center(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white70,
                            radius: 25,
                            child: Image.asset(
                                "assets/images/electric office.png",
                                scale: 0.20),
                          ),
                          title: Text("Electric Office"),
                          subtitle: Text("**** *** 3980"),
                          trailing: Text(
                            "\$35",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12)),
                      child: Center(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white70,
                            radius: 25,
                            child: Image.asset("assets/images/Villa bali.png",
                                scale: 0.20),
                          ),
                          title: Text("VIlla Bali"),
                          subtitle: Text("**** *** 3980"),
                          trailing: Text(
                            "\$5",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
