import 'package:flutter/material.dart';

class Transfer32 extends StatefulWidget {
  const Transfer32({Key? key}) : super(key: key);

  @override
  State<Transfer32> createState() => _Transfer32State();
}

class _Transfer32State extends State<Transfer32> {
  int selected = 0;
  int home = 0;
  List tex = ["s100", "s150", "s200", "s250"];
  List text1 = [
    "Lori Bryson",
    "Lori Bryson",
    "Lori Bryson",
    "Lori Bryson",
    "Lori Bryson"
  ];
  List imag = [
    "assets/images/Mask group (10).png",
    "assets/images/Mask group (5).png",
    "assets/images/Mask group (8).png",
    "assets/images/Mask group (9).png",
    "assets/images/Mask group (11).png"
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back_rounded, size: 29),
              SizedBox(height: height * 0.020),
              Row(
                children: [
                  Icon(Icons.arrow_back_ios, size: 25),
                  SizedBox(width: width * 0.020),
                  Text(
                    "Send Money",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Spacer(),
                  CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage("assets/images/Mask group (5).png")),
                ],
              ),
              Text(
                "Choose Account",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xff777777)),
              ),
              Center(
                child: Image.asset("assets/images/Group 259.png",
                    height: 270, width: 350),
              ),
              Center(
                  child: const Text(
                "How much you would like to send?",
                style: TextStyle(fontSize: 18),
              )),
              SizedBox(height: height * 0.020),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Add(),
              ),
              SizedBox(height: height * 0.030),
              Row(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: InkResponse(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            color: selected == index
                                ? Colors.lightGreenAccent
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black38)),
                        child: Center(
                          child:
                              Text(tex[index], style: TextStyle(fontSize: 16)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.040),
              Text(
                "Choose Recepient",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: height * 0.030),
              Row(
                children: List.generate(
                  5,
                  (index) => Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: InkResponse(
                            onTap: () {
                              setState(() {
                                home = index;
                              });
                            },
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(imag[index]),
                                      fit: BoxFit.cover),
                                  border: Border.all(
                                      color: home == index
                                          ? Colors.black
                                          : Colors.transparent,
                                      width: 1.2)),
                            ),
                          )),
                      SizedBox(height: height * 0.010),
                      Text(
                        text1[index],
                        style: TextStyle(
                            fontSize: 13,
                            color: home == index
                                ? Colors.black
                                : Colors.transparent),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.040),
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Color(0xffFB9089),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        "Take me back",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 70,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xff011A51),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Send Money",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  int incre = 150;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            setState(
              () {
                if (incre > 0) {
                  incre--;
                }
              },
            );
          },
          icon: Padding(
              padding: const EdgeInsets.symmetric(),
              child: Icon(Icons.remove, color: Colors.black, size: 30)),
        ),
        SizedBox(height: 3),
        Text("$incre",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 30)),
        IconButton(
            onPressed: () {
              setState(
                () {
                  incre++;
                },
              );
            },
            icon: Padding(
              padding: const EdgeInsets.symmetric(),
              child: Icon(Icons.add, color: Colors.black, size: 30),
            )),
      ],
    );
  }
}
