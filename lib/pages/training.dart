import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

class TrainigPage extends StatefulWidget {
  @override
 TrainigState createState() =>TrainigState();
}

class TrainigState extends State<TrainigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header('Training',TrainigImage),
        body: Center(
      child: Text("smwe"),
    ));
  }
}
