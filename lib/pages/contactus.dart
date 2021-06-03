import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

class ContactUsPage extends StatefulWidget {
  @override
 ContactUsState createState() =>ContactUsState();
}

class ContactUsState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header('Contact Us',ContactUsImage),
        body: Center(
      child: Text("smwe"),
    ));
  }
}
