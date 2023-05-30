import 'package:flutter/material.dart';
import 'package:untitled1/CommonTextfomfield.dart';

import '2Registration.dart';
import '7Forgot Password.dart';

class Login6 extends StatefulWidget {
  const Login6({Key? key}) : super(key: key);

  @override
  State<Login6> createState() => _Login6State();
}

class _Login6State extends State<Login6> {
  bool hidepassword = true;
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
              children: [
                SizedBox(height: height * 0.050),
                Image.asset("assets/images/6.png", scale: 0.70),
                SizedBox(height: height * 0.050),
                Text(
                  "Login",
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
                SizedBox(height: height * 0.050),
                CommonTextfomfield(
                  obscureText: false,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide(color: Colors.black12)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(9)),
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
                SizedBox(height: height * 0.010),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => forgotpassword7(),
                          ));
                    },
                    child: Text("Forgot password?"),
                  ),
                ),
                SizedBox(height: height * 0.050),
                InkResponse(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Registration2(),
                        ));
                  },
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFB847C)),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.020),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Row(
                    children: [
                      Text("Don’t have an account?",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                      SizedBox(width: width * 0.03),
                      Text(
                        "Signup",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            color: Color(0xffFB847C)),
                      ),
                    ],
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
