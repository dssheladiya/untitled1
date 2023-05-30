import 'package:flutter/material.dart';

import '13_14_15Payment Details.dart';

class TopUP12 extends StatefulWidget {
  const TopUP12({Key? key}) : super(key: key);

  @override
  State<TopUP12> createState() => _TopUP12State();
}

class _TopUP12State extends State<TopUP12> {
  double Slidervalues = 0;
  int seleceted = 0;
  List amount = [
    "\$05",
    "\$10",
    "\$15",
    "\$20",
    "\$50",
    "\$100",
    "\$500",
    "\$1k",
    "\$2k"
  ];
  List coolour = [
    Colors.indigo,
    Colors.green,
    Colors.orange,
    Colors.blue.shade900,
    Colors.blue
  ];
  List transactionstext = ["Paypall", "Apple", "Macdonalds", "Amazon", "Paytm"];
  List Imagess = [
    "assets/images/Mask group (10).png",
    "assets/images/Mask group (5).png",
    "assets/images/Mask group (8).png",
    "assets/images/Mask group (9).png",
    "assets/images/Mask group (11).png"
  ];

  int seleceted1 = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkResponse(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Icon(Icons.arrow_back, size: 35),
                  ),
                  SizedBox(width: 50),
                  Center(
                    child: Text(
                      "Transaction Details",
                      style: TextStyle(
                          color: Color(0xff011a51),
                          fontSize: 23,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.03),
              Center(
                child: Text(
                  "Amount",
                  style: TextStyle(
                      color: Color(0xff011a51),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: height * 0.04),
              Center(
                child: Text(
                  "\$${Slidervalues.toStringAsFixed(1)}0",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: height * 0.01),
              Center(
                child: Text(
                  "Your Balance \$9840.50",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              SizedBox(height: height * 0.04),
              SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: Color(0xffff897e),
                    thumbColor: Color(0xffff897e),
                    inactiveTrackColor: Colors.white,
                    inactiveTickMarkColor: Colors.transparent,
                    activeTickMarkColor: Colors.transparent,
                    valueIndicatorColor: Colors.transparent,
                    trackHeight: 8),
                child: Slider.adaptive(
                  divisions: 50,
                  min: 0,
                  max: 100,
                  label: "${Slidervalues.toString()}",
                  value: Slidervalues,
                  onChanged: (double value) {
                    setState(() {
                      Slidervalues = value;
                    });
                  },
                ),
              ),
              SizedBox(height: height * 0.02),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return InkResponse(
                      onTap: () {
                        setState(() {
                          seleceted = index;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentDetails13(),
                              ));
                        });
                      },
                      child: Container(
                        height: height * 0.02,
                        width: width * 0.05,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: seleceted == index
                              ? Color(0xffff897e)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: seleceted == index
                                  ? Colors.transparent
                                  : Colors.grey.shade300),
                        ),
                        child: Center(
                          child: Text(
                            amount[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    "Wallet Type",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    "Add",
                    style: TextStyle(
                        color: Color(0xff011a51), fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: height * 0.06,
                              width: width * 0.16,
                              margin: EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                color: coolour[index],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(Imagess[index]),
                                ),
                              ),
                            ),
                            SizedBox(width: width * 0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  transactionstext[index],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                SizedBox(height: height * 0.01),
                                Text(
                                  "** * 2878",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            Spacer(),
                            InkResponse(
                              onTap: () {
                                setState(() {
                                  seleceted1 = index;
                                });
                              },
                              child: Container(
                                height: height * 0.025,
                                width: width * 0.05,
                                decoration: BoxDecoration(
                                  color: seleceted1 == index
                                      ? Color(0xffff897e)
                                      : Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(Icons.check,
                                    size: 15,
                                    color: seleceted1 == index
                                        ? Colors.white
                                        : Colors.transparent),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
