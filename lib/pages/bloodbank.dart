import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

class BloodbankPage extends StatefulWidget {
  @override
  BloodbankState createState() => BloodbankState();
}

class BloodbankState extends State<BloodbankPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header('Blood Bank',BloodBankImage),
        body: Center(
      child: Text("smwe"),
    ));
  }
}
