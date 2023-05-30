import 'package:flutter/material.dart';

import '19Withdarw.dart';

class ContactList28 extends StatefulWidget {
  const ContactList28({Key? key}) : super(key: key);

  @override
  State<ContactList28> createState() => _ContactList28State();
}

class _ContactList28State extends State<ContactList28> {
  List imag = [
    "assets/images/Mask Group (1).png",
    "assets/images/Mask Group (2).png",
    "assets/images/Mask Group (3).png",
    "assets/images/Mask Group (4).png",
  ];
  List nema = ["Edwardo", "Jasson", "Kemod", "Dasep"];
  List men = [
    "Diani Otelanis Teori",
    "Bahrun ST",
    "Ririn Panjaitan spd",
    "Eki Sulungpati Mpd",
    "Septiani Destri seulo",
    "Nuni Eksitin",
    "Ririn Panjaitan spd",
  ];
  List abcd = ["D", "B", "R", "E", "S", "N", "R"];
  List numbar = [
    "+62898023450",
    "+62898023450",
    "+62898023450",
    "+62898023450",
    "+62898023450",
    "+62898023450",
    "+62898023450"
  ];
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkResponse(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_rounded, size: 35)),
                  SizedBox(width: width * 0.20),
                  Text(
                    "Contact List",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff011A51)),
                  ),
                ],
              ),
              SizedBox(height: height * 0.050),
              Text(
                "Recent contact",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: List.generate(
                    4,
                    (index) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: InkResponse(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Withdarw19(),
                                  ));
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 28,
                              child: Image.asset(imag[index], scale: 0.02),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.020),
                        Text(
                          nema[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.020),
              Text(
                "All contact",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      7,
                      (index) => Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: Colors.lightBlueAccent,
                              child: Text(
                                abcd[index],
                                style: TextStyle(
                                    fontSize: 29, color: Colors.black38),
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.070),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                men[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                              SizedBox(height: height * 0.010),
                              Text(
                                numbar[index],
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black38),
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
      ),
    );
  }
}
