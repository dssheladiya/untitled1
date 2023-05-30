import 'package:flutter/material.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '4_5Welcome.dart';

class EnterCode3 extends StatefulWidget {
  const EnterCode3({Key? key, required this.code}) : super(key: key);
  final code;

  @override
  State<EnterCode3> createState() => _EnterCode3State();
}

class _EnterCode3State extends State<EnterCode3> {
  int second = 60;
  bool isResend = false;

  void timerDemo() {
    Timer timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {});
        second--;
        if (second == 0) {
          timer.cancel();
          second = 60;
          isResend = true;
          setState(() {});
        }
      },
    );
  }

  @override
  void initState() {
    timerDemo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.1),
              Center(
                child: Text(
                  "Enter Code",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: height * 0.02),
              Text(
                "Enter the 6-digit verification sent to",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: height * 0.01),
              Text("+${widget.code}"),
              SizedBox(height: height * 0.04),
              Image.asset("assets/images/3.png"),
              SizedBox(height: height * 0.2),
              OtpTextField(
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
              ),
              SizedBox(height: height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Resend code in ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${second}",
                    style: TextStyle(
                        color: Colors.deepOrangeAccent.shade100,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "second",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              isResend
                  ? MaterialButton(
                      onPressed: () {
                        setState(() {});
                        isResend = false;
                        timerDemo();
                      },
                      child: Text("RESEND"),
                    )
                  : SizedBox(),
              SizedBox(height: height * 0.06),
              InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Welcome4(),
                        ));
                  });
                },
                child: Container(
                  height: height * 0.07,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    color: Color(0xffff897e),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "SEND VIA SMS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.02,
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
