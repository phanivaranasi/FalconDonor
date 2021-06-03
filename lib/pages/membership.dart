import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

class MembershipPage extends StatefulWidget {
  @override
  MembershipState createState() => MembershipState();
}

class MembershipState extends State<MembershipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header('Membership',MembershipImage),
        body: Center(
      child: Text("smwe"),
    ));
  }
}
