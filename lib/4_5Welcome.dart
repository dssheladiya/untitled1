import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled1/CommonTextfomfield.dart';

import '9Balance.dart';

class Welcome4 extends StatefulWidget {
  const Welcome4({Key? key}) : super(key: key);

  @override
  State<Welcome4> createState() => _Welcome4State();
}

class _Welcome4State extends State<Welcome4> {
  bool isvisiblity = false;
  bool hidepassword = true;
  String emailvalue = "sheladiya3@gmail.com";
  final fomkey = GlobalKey<FormState>();
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController namecontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: Color(0xff011A51),
                      fontSize: 33,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Text(
                  "Set a name for your profile, here's",
                  style: TextStyle(color: Color(0xff727E96), fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  "the password",
                  style: TextStyle(color: Color(0xff727E96), fontSize: 18),
                ),
                SizedBox(height: 30),
                CircleAvatar(
                  backgroundColor: Color(0xffD8E0F0),
                  radius: 80,
                  child: Image.asset("assets/images/4.png", scale: 0.80),
                ),
                SizedBox(height: height * 0.090),
                CommonTextfomfield(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  labelText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  controller: emailcontroler,
                  validator: (value) {
                    bool emailvalid = RegExp(
                      "^[a-zA-Z0-9.!#\$%&'+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?"
                      "(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)\$",
                    ).hasMatch(value);
                    if (emailvalid) {
                      return null;
                    } else {
                      return "enter vaild Email";
                    }
                  },
                ),
                SizedBox(height: height * 0.030),
                CommonTextfomfield(
                  obscureText: false,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(9)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide(color: Colors.black12)),
                  textInputAction: TextInputAction.next,
                  labelText: "Name",
                  keyboardType: TextInputType.name,
                  controller: namecontroler,
                  validator: (value) {
                    bool namevalue = RegExp("[a-zA-Z]").hasMatch(value);
                    if (namevalue) {
                      return null;
                    } else {
                      return "enter you Name";
                    }
                  },
                ),
                SizedBox(height: height * 0.030),
                CommonTextfomfield(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(9)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(9)),
                  textInputAction: TextInputAction.next,
                  labelText: "Password",
                  obscureText: hidepassword,
                  suffixIcon: InkResponse(
                      onTap: () {
                        setState(() {
                          hidepassword = !hidepassword;
                        });
                      },
                      child: hidepassword == false
                          ? Icon(
                              Icons.visibility,
                              color: Colors.black,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: Colors.black,
                            )),
                  controller: passwordcontroler,
                  validator: (value) {
                    bool passwordvalue = RegExp(
                            "^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}\$")
                        .hasMatch(value);
                    if (passwordvalue) {
                      return null;
                    } else {
                      return "enter you password";
                    }
                  },
                ),
                SizedBox(height: height * 0.06),
                InkResponse(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 600,
                              child: Column(
                                children: [
                                  SizedBox(height: height * 0.050),
                                  Text(
                                    "Congratulation, Now you ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: height * 0.010),
                                  Text(
                                    " are registered! ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: height * 0.040),
                                  Text(
                                    " Start using the app, Pay attention",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black38,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: height * 0.01),
                                  Text(
                                    " to the rules in the application",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black38,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: height * 0.060),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 80,
                                    child: Image.asset("assets/images/5.png",
                                        scale: 0.80),
                                  ),
                                  SizedBox(height: height * 0.05),
                                  InkResponse(
                                    onTap: () {
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Balance9(),
                                            ));
                                      });
                                    },
                                    child: Container(
                                      height: 60,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffFB847C),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "START",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
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
                        "CONTINUE",
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
      ),
    );
  }
}
