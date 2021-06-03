import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

class HomeNursingPage extends StatefulWidget {
  @override
 HomeNursingState createState() =>HomeNursingState();
}

class HomeNursingState extends State<HomeNursingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header('Home Nursing',HomeNursingImage),
        body: Center(
      child: Text("smwe"),
    ));
  }
}
