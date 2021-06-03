import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

class BloodDonorPage extends StatefulWidget {
  @override
 BloodDonorState createState() =>BloodDonorState();
}

class BloodDonorState extends State<BloodDonorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header('Blood Donor',BloodDonorImage),
        body: Center(
      child: Text("dnor"),
    ));
  }
}
