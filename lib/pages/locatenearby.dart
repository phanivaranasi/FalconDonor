import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

class LocatUsPage extends StatefulWidget {
  @override
 LocatUsState createState() =>LocatUsState();
}

class LocatUsState extends State<LocatUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header('Locate Near By',LocateImage),
        body: Center(
      child: Text("smwe"),
    ));
  }
}
