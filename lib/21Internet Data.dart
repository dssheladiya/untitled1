import 'package:flutter/material.dart';

class InternetData21 extends StatefulWidget {
  const InternetData21({Key? key}) : super(key: key);

  @override
  State<InternetData21> createState() => _InternetData21State();
}

class _InternetData21State extends State<InternetData21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xff011A51),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 130),
                      child: Text(
                        "Internet Data",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
                Positioned(
                  top: 60,
                  left: 30,
                  child: Container(
                    height: 250,
                    width: 355,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Row(
                            children: [
                              CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/Mask group (5).png"),
                                  radius: 28),
                              SizedBox(width: 8),
                              Text(
                                "Lori Bryson",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),
                              ),
                              Spacer(),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                color: Colors.deepOrangeAccent.shade100,
                                child: Text(
                                  "Buy Package",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Data",
                            style: TextStyle(
                                color: Color(0xff1a237e),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "Monthly",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                "42 GB",
                                style: TextStyle(
                                    color: Color(0xff1a237e),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Spacer(),
                              Text(
                                "12 GB",
                                style: TextStyle(
                                    color: Color(0xff1a237e),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Divider(
                              color: Color(0xff1a237e),
                              thickness: 3,
                              endIndent: 40),
                          SizedBox(height: 20),
                          Text(
                            "March 21-April 21,2022",
                            style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Choose Package",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: 160,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(width: 1, color: Colors.black38)),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/Mask group (5).png"),
                                    radius: 28),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Freedom Internet",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "30 Day",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "\$10",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(thickness: 2),
                            SizedBox(height: 10),
                            Text(
                              "New 42 GB + Call 2hours + Streaming 5 Gb ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 220),
                              child: Text(
                                "Active 30 Day ",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black38),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 160,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(width: 1, color: Colors.black38)),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/Mask group (5).png"),
                                    radius: 28),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Freedom Apps Ytube,",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Netflix, IG , More ...",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "\$20",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(thickness: 2),
                            SizedBox(height: 10),
                            Text(
                              "New 42 GB + Call 2hours + Streaming 5 Gb ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 220),
                              child: Text(
                                "Active 30 Day ",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black38),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 160,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(width: 1, color: Colors.black38)),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/Mask group (5).png"),
                                    radius: 28),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Daily kuota freedom",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "2GB/Day",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "\$25",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(thickness: 2),
                            SizedBox(height: 10),
                            Text(
                              "New 42 GB + Call 2hours + Streaming 5 Gb ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 220),
                              child: Text(
                                "Active 30 Day ",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black38),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
