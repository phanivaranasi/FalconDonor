import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

class VolunteerPage extends StatefulWidget {
  @override
 VolunteerState createState() =>VolunteerState();
}

class VolunteerState extends State<VolunteerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header('Volunteer',VolunteerImage),
        body: Center(
      child: Text("smwe"),
    ));
  }
}
