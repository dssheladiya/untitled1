import 'package:flutter/material.dart';

class PaymentDetails13 extends StatefulWidget {
  const PaymentDetails13({Key? key}) : super(key: key);

  @override
  State<PaymentDetails13> createState() => _PaymentDetails13State();
}

class _PaymentDetails13State extends State<PaymentDetails13> {
  List tex = [
    "Transfer Visa",
    "Transfer Sona Bank",
    "Transfer Getek Bank",
    "Transfer Ateul Bank",
  ];
  List imag = [
    "assets/images/Group 54.png",
    "assets/images/Group 54 (1).png",
    "assets/images/Group 54 (2).png",
    "assets/images/Group 54 (3).png",
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEFF2F4),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 350),
              child: InkResponse(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close, size: 40),
              ),
            ),
            SizedBox(height: height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: height * 0.70,
                width: width * 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height * 0.04),
                    Text(
                      "Payment Details",
                      style: TextStyle(
                          color: Color(0xff011A51),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: height * 0.06),
                    Row(
                      children: [
                        SizedBox(width: width * 0.040),
                        Text(
                          "Amount",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Text(
                          "\$20.00",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(width: width * 0.06),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      children: [
                        SizedBox(width: width * 0.040),
                        Text(
                          "Top up Type",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Text(
                          "Paypall",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(width: width * 0.06),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      children: [
                        SizedBox(width: width * 0.040),
                        Text(
                          "Transaction ID",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Text(
                          "234795-7456-0008",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(width: width * 0.06),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      children: [
                        SizedBox(width: width * 0.040),
                        Text(
                          "Time & Date",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        Spacer(),
                        Text(
                          "01/03/22 , 11:00 AM",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(width: width * 0.06),
                      ],
                    ),
                    SizedBox(height: height * 0.070),
                    InkResponse(
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 670,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: height * 0.020),
                                    Row(
                                      children: [
                                        Text(
                                          "Choose payment methode",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20),
                                        ),
                                        Spacer(),
                                        InkResponse(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Icon(Icons.close),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.040),
                                    Text(
                                      "Manual Verification",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                    SizedBox(height: height * 0.020),
                                    Column(
                                      children: List.generate(
                                        4,
                                        (index) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Container(
                                            height: 100,
                                            width: 390,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black38),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Row(
                                              children: [
                                                Image.asset(imag[index],
                                                    height: 80, width: 100),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                        height: height * 0.030),
                                                    Text(
                                                      tex[index],
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                        height: height * 0.010),
                                                    Text(
                                                      "******3298",
                                                      style: TextStyle(
                                                          color: Colors.black38,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: height * 0.09,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12),
                        child: Center(
                          child: Text("Choose payment methode",
                              style: TextStyle(
                                  color: Color(0xff011A51), fontSize: 20)),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.070),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset("assets/images/logo.png",
                              scale: 0.50),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("All your transactions are safe and fast,"),
                            SizedBox(height: height * 0.005),
                            Text("By continuing this transaction, you"),
                            SizedBox(height: height * 0.005),
                            Row(
                              children: [
                                Text("agree to our "),
                                Text(
                                  "Terms & Conditions.",
                                  style: TextStyle(color: Color(0xffFF897E)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            InkResponse(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: 500,
                        width: 360,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: height * 0.050),
                            CircleAvatar(
                                radius: 60,
                                backgroundColor: Color(0xffB096EE),
                                foregroundImage:
                                    AssetImage("assets/images/Group 60.png")),
                            SizedBox(height: height * 0.040),
                            Text("Transaction Successful",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500)),
                            SizedBox(height: height * 0.030),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            ),
                            Text(
                              " adipiscing elit. Eu dolor, bibendum  ",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            ),
                            Text(
                              "purus eu mi, purus lorem.",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            ),
                            SizedBox(height: height * 0.070),
                            Container(
                              height: 70,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffFB847C)),
                              child: Center(
                                child: Text(
                                  "DONE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: height * 0.070,
                width: width * 0.60,
                decoration: BoxDecoration(
                  color: Color(0xffFB847C),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Send Money",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
