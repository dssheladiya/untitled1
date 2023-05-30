import 'package:flutter/material.dart';

class CommonTextfomfield extends StatefulWidget {
  const CommonTextfomfield(
      {Key? key,
      this.textInputAction,
      this.keyboardType,
      required this.obscureText,
      this.validator,
      this.controller,
      this.labelText,
      this.suffixIcon,
      this.labelStyle,
      this.focusedBorder,
      this.enabledBorder})
      : super(key: key);

  final textInputAction;
  final keyboardType;
  final obscureText;
  final validator;
  final controller;
  final labelText;
  final suffixIcon;
  final labelStyle;
  final focusedBorder;
  final enabledBorder;

  @override
  State<CommonTextfomfield> createState() => _CommonTextfomfieldState();
}

class _CommonTextfomfieldState extends State<CommonTextfomfield> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return TextFormField(
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixIcon: widget.suffixIcon,
        labelStyle: TextStyle(color: Colors.black),
        focusedBorder: widget.focusedBorder,
        enabledBorder: widget.enabledBorder,
        contentPadding: EdgeInsets.symmetric(
          horizontal: height * 0.04,
          vertical: height * 0.027,
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// import '17-Electric-Add-number-Page.dart';
// import '21-Internet-Data.dart';
// import '24-WalletPage.dart';
// import '28-Contact-List.dart';
// import '29-General-Profile.dart';
// import '6-Login-Pag.dart';
// import 'bottom_navigation.dart';
//
// class Electric extends StatefulWidget {
//   Electric({Key? key}) : super(key: key);
//
//   @override
//   State<Electric> createState() => _ElectricState();
// }
//
// class _ElectricState extends State<Electric> {
//   List one = [
//     "Transfer",
//     "Withdraw",
//     "Top up",
//     "Deposit",
//     "Pay bills",
//     "Pay context"
//   ];
//   List operations = [
//     "assets/images/mobile-banking.png",
//     "assets/images/atm.png",
//     "assets/images/Top up.png",
//     "assets/images/deposit.png",
//     "assets/images/bills.png",
//     "assets/images/context.png"
//   ];
//   bool home = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 320,
//               width: MediaQuery.of(context).size.width,
//               color: Color(0xff757575),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 70,
//                   ),
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage("assets/images/Agirls.jpg"),
//                     backgroundColor: Colors.red,
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     "Rena Wells",
//                     style: TextStyle(
//                         fontSize: 21,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     height: 2,
//                   ),
//                   Text(
//                     "Rodey43@gmail.com",
//                     style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w300),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   MaterialButton(
//                     onPressed: () {
//                       setState(() {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => General(),
//                           ),
//                         );
//                       });
//                     },
//                     padding: EdgeInsets.symmetric(horizontal: 38, vertical: 11),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(9),
//                     ),
//                     color: Colors.deepOrangeAccent.shade100,
//                     child: Text(
//                       "Verified",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 15),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 20, left: 20),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Dark mode",
//                       style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.black54,
//                           fontWeight: FontWeight.w500),
//                     ),
//                     SizedBox(
//                       width: 110,
//                     ),
//                     Switch(
//                         value: home,
//                         onChanged: (value) {
//                           setState(() {
//                             home = value;
//                           });
//                         })
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 25, top: 18),
//               child: InkResponse(
//                 onTap: () {
//                   setState(() {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ContactList(),
//                       ),
//                     );
//                   });
//                 },
//                 child: Text(
//                   "Invite Friends",
//                   style: TextStyle(
//                       fontSize: 17,
//                       color: Colors.black54,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 25, top: 40),
//               child: InkResponse(
//                 onTap: () {
//                   setState(() {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ContactList(),
//                       ),
//                     );
//                   });
//                 },
//                 child: Text(
//                   "Contact List",
//                   style: TextStyle(
//                       fontSize: 17,
//                       color: Colors.black54,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 25, top: 40),
//               child: InkResponse(
//                 onTap: () {
//                   setState(() {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Wallet(),
//                       ),
//                     );
//                   });
//                 },
//                 child: Text(
//                   "My Wallet",
//                   style: TextStyle(
//                       fontSize: 17,
//                       color: Colors.black54,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 25, top: 40),
//               child: Text(
//                 "Change Password",
//                 style: TextStyle(
//                     fontSize: 17,
//                     color: Colors.black54,
//                     fontWeight: FontWeight.w500),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 25, top: 40),
//               child: InkResponse(
//                 onTap: () {
//                   setState(() {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => General(),
//                       ),
//                     );
//                   });
//                 },
//                 child: Text(
//                   "About us",
//                   style: TextStyle(
//                       fontSize: 17,
//                       color: Colors.black54,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 80, left: 25),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.logout,
//                     color: Colors.deepOrangeAccent.shade100,
//                   ),
//                   InkResponse(
//                     onTap: () {
//                       setState(() {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => Congratulation(),
//                           ),
//                         );
//                       });
//                     },
//                     child: Text(
//                       " Log Out",
//                       style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.deepOrangeAccent.shade100,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//       backgroundColor: Color(0xffe0e0e0),
//       body: Column(
//         children: [
//           Container(
//             height: 390,
//             child: Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 Container(
//                   height: 300,
//                   width: 393,
//                   color: Color(0xff1a237e),
//                   child: Image.asset(
//                     "assets/images/Group 28.png",
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   top: 57,
//                   left: 346,
//                   child: CircleAvatar(
//                     radius: 6,
//                     backgroundColor: Colors.deepOrange,
//                   ),
//                 ),
//                 Positioned(
//                   top: 55,
//                   left: 330,
//                   child: Icon(
//                     Icons.notifications_none,
//                     color: Colors.white,
//                     size: 28,
//                   ),
//                 ),
//                 Positioned(
//                   top: 174,
//                   left: 18,
//                   child: Container(
//                     height: 220,
//                     width: 355,
//                     decoration: BoxDecoration(
//                       color: Color(0xfff5f5f5),
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 30, top: 18),
//                               child: Text(
//                                 "Balance",
//                                 style: TextStyle(
//                                     fontSize: 17,
//                                     color: Colors.grey,
//                                     fontWeight: FontWeight.w500),
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                               const EdgeInsets.only(top: 18, left: 185),
//                               child: Text(
//                                 "Active",
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.deepOrangeAccent.shade100,
//                                     fontWeight: FontWeight.w500),
//                               ),
//                             )
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 28, top: 18),
//                           child: Text(
//                             "\$7800.50",
//                             style: TextStyle(
//                                 fontSize: 25,
//                                 fontFamily: "Sigma",
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 2,
//                         ),
//                         Divider(
//                           color: Colors.white,
//                           thickness: 1.7,
//                         ),
//                         SizedBox(
//                           height: 115,
//                           child: ListView.builder(
//                             physics: BouncingScrollPhysics(),
//                             scrollDirection: Axis.horizontal,
//                             itemCount: 6,
//                             itemBuilder: (context, index) {
//                               return Column(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     child: Container(
//                                       height: 53,
//                                       width: 65,
//                                       child: Image.asset(
//                                         operations[index],
//                                       ),
//                                       clipBehavior: Clip.none,
//                                       margin:
//                                       EdgeInsets.symmetric(horizontal: 16),
//                                       decoration: BoxDecoration(
//                                         color: Color(0xffe8eaf6),
//                                         borderRadius: BorderRadius.circular(7),
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                       top: 8,
//                                     ),
//                                     child: Text(
//                                       one[index],
//                                       style: TextStyle(
//                                           fontSize: 15,
//                                           fontWeight: FontWeight.w500),
//                                     ),
//                                   ),
//                                 ],
//                               );
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Center(
//             child: Text(
//               "All Service",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25,
//                 fontFamily: "Signi",
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 35,
//           ),
//           Row(
//             children: [
//               SizedBox(
//                 width: 30,
//               ),
//               InkResponse(
//                 onTap: () {
//                   setState(() {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ElectricPage17(),
//                       ),
//                     );
//                   });
//                 },
//                 child: Container(
//                   height: 55,
//                   width: 55,
//                   child: Image.asset(
//                     "assets/images/flash.png",
//                     scale: 13,
//                     color: Color(0xffff4081),
//                   ),
//                   decoration: BoxDecoration(
//                       color: Color(0xfff8bbd0).withAlpha(160),
//                       borderRadius: BorderRadius.circular(15)),
//                 ),
//               ),
//               SizedBox(
//                 width: 12,
//               ),
//               Text(
//                 "Electric",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 17,
//                 ),
//               ),
//               SizedBox(
//                 width: 57,
//               ),
//               Container(
//                 height: 55,
//                 width: 55,
//                 child: Image.asset(
//                   "assets/images/AAShopping.png",
//                   scale: 15,
//                   color: Color(0xffaa00ff),
//                 ),
//                 decoration: BoxDecoration(
//                     color: Color(0xffe1bee7),
//                     borderRadius: BorderRadius.circular(15)),
//               ),
//               SizedBox(
//                 width: 12,
//               ),
//               Text(
//                 "Marchant",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 17,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 25,
//           ),
//           Row(
//             children: [
//               SizedBox(
//                 width: 30,
//               ),
//               InkResponse(
//                 onTap: () {
//                   setState(() {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Internet(),
//                       ),
//                     );
//                   });
//                 },
//                 child: Container(
//                   height: 55,
//                   width: 55,
//                   child: Image.asset(
//                     "assets/images/no-wifi-removebg-preview.png",
//                     scale: 16,
//                     color: Color(0xff29b6f6),
//                   ),
//                   decoration: BoxDecoration(
//                       color: Color(0xffb3e5fc).withAlpha(160),
//                       borderRadius: BorderRadius.circular(15)),
//                 ),
//               ),
//               SizedBox(
//                 width: 12,
//               ),
//               Text(
//                 "Internet",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 17,
//                 ),
//               ),
//               SizedBox(
//                 width: 57,
//               ),
//               Container(
//                 height: 55,
//                 width: 55,
//                 child: Image.asset(
//                   "assets/images/golden-ticket-png",
//                   scale: 13,
//                 ),
//                 decoration: BoxDecoration(
//                     color: Color(0xfff0f4c3),
//                     borderRadius: BorderRadius.circular(15)),
//               ),
//               SizedBox(
//                 width: 12,
//               ),
//               Text(
//                 "Ticket",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 17,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 25,
//           ),
//           Row(
//             children: [
//               SizedBox(
//                 width: 30,
//               ),
//               Container(
//                 height: 55,
//                 width: 55,
//                 child: Image.asset(
//                   "assets/images/smartphone-call-preview.png",
//                   scale: 15,
//                   color: Color(0xffff7043),
//                 ),
//                 decoration: BoxDecoration(
//                     color: Color(0xffffccbc).withAlpha(160),
//                     borderRadius: BorderRadius.circular(15)),
//               ),
//               SizedBox(
//                 width: 12,
//               ),
//               Text(
//                 "Internet",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 17,
//                 ),
//               ),
//               SizedBox(
//                 width: 57,
//               ),
//               Container(
//                 height: 55,
//                 width: 55,
//                 child: Image.asset(
//                   "assets/images/Internet.png",
//                   color: Color(0xff00bcd4),
//                   scale: 15,
//                 ),
//                 decoration: BoxDecoration(
//                     color: Color(0xffb2ebf2),
//                     borderRadius: BorderRadius.circular(15)),
//               ),
//               SizedBox(
//                 width: 12,
//               ),
//               Text(
//                 "Ticket",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 17,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 25,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 135),
//             child: Row(
//               children: [
//                 Container(
//                   height: 55,
//                   width: 55,
//                   child: Image.asset(
//                     "assets/images/Apppppp.png",
//                     color: Color(0xff2e7d32),
//                     scale: 15,
//                   ),
//                   decoration: BoxDecoration(
//                       color: Color(0xffa5d6a7).withAlpha(150),
//                       borderRadius: BorderRadius.circular(15)),
//                 ),
//                 SizedBox(
//                   width: 12,
//                 ),
//                 Text(
//                   "more",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 17,
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
