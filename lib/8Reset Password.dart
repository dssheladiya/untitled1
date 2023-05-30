import 'package:flutter/material.dart';

import '1Experience.dart';
import 'CommonTextfomfield.dart';

class Resetpassword8 extends StatefulWidget {
  const Resetpassword8({Key? key}) : super(key: key);

  @override
  State<Resetpassword8> createState() => _Resetpassword8State();
}

class _Resetpassword8State extends State<Resetpassword8> {
  bool hidepassword = true;
  TextEditingController passwordcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 350),
                  child: InkResponse(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Icon(Icons.arrow_back_outlined, size: 30),
                  ),
                ),
                SizedBox(height: height * 0.050),
                Image.asset("assets/images/3.png", scale: 0.70),
                SizedBox(height: height * 0.050),
                Text(
                  "Reset Password",
                  style: TextStyle(
                      color: Color(0xff011A51),
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: height * 0.015),
                Text(
                  "Set a name for your profile, here's",
                  style: TextStyle(
                      color: Color(0xff727E96),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "the password",
                  style: TextStyle(
                      color: Color(0xff727E96),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: height * 0.08),
                CommonTextfomfield(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(9)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(9)),
                  textInputAction: TextInputAction.next,
                  labelText: "New Password",
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
                CommonTextfomfield(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(9)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(9)),
                  textInputAction: TextInputAction.next,
                  labelText: "Reset Password",
                  obscureText: hidepassword,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Experience1(),
                        ));
                  },
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFB847C)),
                    child: Row(
                      children: [
                        SizedBox(width: width * 0.3),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffFB847C),
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Center(
                          child: Text(
                            "Submiting",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
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
