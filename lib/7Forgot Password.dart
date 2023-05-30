import 'package:flutter/material.dart';
import 'package:untitled1/CommonTextfomfield.dart';

import '8Reset Password.dart';

class forgotpassword7 extends StatefulWidget {
  const forgotpassword7({Key? key}) : super(key: key);

  @override
  State<forgotpassword7> createState() => _forgotpassword7State();
}

class _forgotpassword7State extends State<forgotpassword7> {
  TextEditingController emailcontroler = TextEditingController();
  String emailvalue = "sheladiya3@gmail.com";
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
                  padding: const EdgeInsets.only(right: 300),
                  child: InkResponse(
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
                ),
                SizedBox(height: height * 0.010),
                Image.asset("assets/images/6.png", scale: 0.70),
                SizedBox(height: height * 0.050),
                Text(
                  "Forgot Password",
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
                SizedBox(height: height * 0.09),
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
                SizedBox(height: height * 0.05),
                InkResponse(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Resetpassword8(),
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
                        "Next",
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
