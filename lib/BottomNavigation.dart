import 'package:flutter/material.dart';

import '16_27Electric.dart';
import '24Wallet.dart';
import '26Statistic.dart';
import '29Profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selected = 0;
  List bottomitem = [
    Electric16_27(),
    Statistic26(),
    wallet24(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomitem[selected],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: selected,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.poll),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            label: "",
          ),
        ],
      ),
    );
  }
}
