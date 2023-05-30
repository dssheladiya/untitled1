import 'package:flutter/material.dart';

//import 'Electric.dart';
class Addnewcards30 extends StatefulWidget {
  const Addnewcards30({Key? key}) : super(key: key);

  @override
  State<Addnewcards30> createState() => _Addnewcards30State();
}

class _Addnewcards30State extends State<Addnewcards30> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Icon(Icons.arrow_back, size: 35, color: Colors.black),
              ),
              SizedBox(height: height * 0.01),
              Center(
                child: Text(
                  "Add new cards",
                  style: TextStyle(
                      color: Color(0xff011a51),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: height * 0.02),
              Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.blue.shade100.withOpacity(0.2),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 125,
                    child:
                        Image.asset("assets/images/Group 296.png", scale: 0.80),
                  ),
                ],
              ),
              SizedBox(height: height * 0.03),
              TextField(
                decoration: InputDecoration(
                  labelText: "Card Number",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 28, horizontal: 10),
                ),
              ),
              SizedBox(height: height * 0.03),
              Row(
                children: [
                  Container(
                    width: width * 0.43,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Expire Date",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 28, horizontal: 10),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: width * 0.43,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "CVC/CVV",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 28, horizontal: 10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.04),
              TextField(
                decoration: InputDecoration(
                  labelText: "Cardholder Name",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 28, horizontal: 10),
                ),
              ),
              SizedBox(height: height * 0.04),
              TextField(
                decoration: InputDecoration(
                  labelText: "Adress",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 28, horizontal: 10),
                ),
              ),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xffff897e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    value: selected,
                    onChanged: (value) {
                      setState(() {
                        selected = value!;
                      });
                    },
                  ),
                  Text(
                    "Save card",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: height * 0.03),
              Center(
                // child: InkResponse(
                //   onTap: () {
                //     setState(() {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => Electric(),
                //           ));
                //     });
                //   },
                child: Container(
                  height: height * 0.072,
                  width: width * 0.5,
                  decoration: BoxDecoration(
                    color: Color(0xffff897e),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "ADD CARD",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
