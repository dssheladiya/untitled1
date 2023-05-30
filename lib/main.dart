import 'package:flutter/material.dart';

import '10Send Money.dart';
import '11Transffered.dart';
import '12Top up.dart';
import '13_14_15Payment Details.dart';
import '16_27Electric.dart';
import '17Electric.dart';
import '18BillsEnqui.dart';
import '19Withdarw.dart';
import '20ConfirmWithdraw.dart';
import '21Internet Data.dart';
import '22InternetDataPage.dart';
import '24Wallet.dart';
import '25accountWallet.dart';
import '26Statistic.dart';
import '29Profile.dart';
import '30Add new cards.dart';
import '31Scan your card.dart';
import '32Transfer.dart';
import '9Balance.dart';
import '28Contact List.dart';
import '3EnterCode.dart';
import '1Experience.dart';
import '7Forgot Password.dart';
import '6Login.dart';
import '23Notifcation.dart';
import '2Registration.dart';
import '8Reset Password.dart';
import '4_5Welcome.dart';
import 'BottomNavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Experience1(),
    );
  }
}
