import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_back_rounded, size: 35),
                  SizedBox(width: width * 0.28),
                  Text(
                    "Profile",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff011A51)),
                  ),
                ],
              ),
              SizedBox(height: height * 0.030),
              CircleAvatar(
                radius: 35,
                child: Image.asset("assets/images/Mask group (5).png"),
              ),
              SizedBox(height: height * 0.020),
              Text(
                "Rene Wells",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "Roday43@gmail.com",
                style: TextStyle(fontSize: 15, color: Colors.black38),
              ),
              SizedBox(height: height * 0.040),
              Container(
                height: height * 0.099,
                width: width * 0.88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFB847C),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 40),
                      child: Column(
                        children: [
                          Text(
                            "Income",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$3460",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: width * 0.120),
                    RotatedBox(
                      quarterTurns: 1,
                      child: Divider(
                          thickness: 2,
                          height: 30,
                          color: Colors.white,
                          endIndent: 10,
                          indent: 10),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 50),
                      child: Column(
                        children: [
                          Text(
                            "Outcom",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$2500",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280, top: 30),
                child: Text(
                  "General",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
              SizedBox(height: height * 0.030),
              Container(
                height: height * 0.099,
                width: width * 0.88,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black38)),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 25,
                      child: Image.asset(
                        "assets/images/Security.png",
                        scale: 0.20,
                      ),
                    ),
                    title: Text("Security"),
                    subtitle: Text("Your Password Acount"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              SizedBox(height: height * 0.030),
              Container(
                height: height * 0.099,
                width: width * 0.88,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black38)),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 25,
                      child: Image.asset(
                        "assets/images/help.png",
                        scale: 0.20,
                      ),
                    ),
                    title: Text("Help"),
                    subtitle: Text("Need More Help"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              SizedBox(height: height * 0.030),
              Container(
                height: height * 0.099,
                width: width * 0.88,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black38)),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 25,
                      child: Image.asset(
                        "assets/images/privacy policy.png",
                        scale: 0.20,
                      ),
                    ),
                    title: Text("Privacy Policy"),
                    subtitle: Text("Your Password Acount"),
                    trailing: Icon(Icons.arrow_forward_ios),
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
