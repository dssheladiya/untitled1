import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

import '3EnterCode.dart';

class Registration2 extends StatefulWidget {
  const Registration2({Key? key}) : super(key: key);

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  var selcted = GlobalKey<FormState>();
  TextEditingController one = TextEditingController();
  int? number1 = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Registration",
                style: TextStyle(
                    color: Color(0xff011A51),
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: height * 0.030),
              Text(
                "Enter your mobile phone number, we will send",
                style: TextStyle(color: Color(0xff727E96), fontSize: 15),
              ),
              SizedBox(height: height * 0.009),
              Text(
                "you OTP to verify later.",
                style: TextStyle(color: Color(0xff727E96), fontSize: 15),
              ),
              SizedBox(height: height * 0.090),
              Image.asset("assets/images/2.png", scale: 0.80),
              SizedBox(height: height * 0.050),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Form(
                  key: selcted,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: one,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.check_circle_rounded,
                            color: Colors.deepOrangeAccent.shade100,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CountryPickerDropdown(
                              icon: SizedBox(),
                              initialValue: 'AR',
                              priorityList: [
                                CountryPickerUtils.getCountryByIsoCode('GB'),
                                CountryPickerUtils.getCountryByIsoCode('CN'),
                              ],
                              sortComparator: (Country a, Country b) =>
                                  a.isoCode.compareTo(b.isoCode),
                              onValuePicked: (Country country) {
                                print("${country.name}");
                              },
                            ),
                          ),
                          label: Text(
                            "Number phone",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                        ),
                        validator: (value) {
                          setState(() {});
                          if (value!.isEmpty) {
                            return "enter valid phone";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              //   SizedBox(height: 10),
              InkResponse(
                onTap: () {
                  if (selcted.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EnterCode3(code: one.text),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("invalid in phone"),
                      ),
                    );
                  }
                },
                child: Container(
                  height: 58,
                  width: 327,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepOrangeAccent.withAlpha(180),
                  ),
                  child: Center(
                    child: Text(
                      "SEND VIA SMS",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.030),
              Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff011A51),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: height * 0.080),
              Text(
                "By creating and/or using an account, you",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              SizedBox(height: height * 0.010),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    Text(
                      "agree to our ",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      "Terms & Conditions.",
                      style: TextStyle(color: Color(0xffFF928E), fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
