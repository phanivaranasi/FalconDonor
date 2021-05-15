import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/pages/login.dart';

class DashboardPage extends StatefulWidget {
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final content = Scaffold(
        appBar: header,
        body: SingleChildScrollView(
            child: new Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 120,
              width: double.maxFinite,
              child: Stack(
                children: <Widget>[
                  
                ],
              )
            ),
          ],
        )));
    return content;
    //return new WillPopScope(child: content, onWillPop: () async => false);
  }

  Widget memberIcon() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
        child: new FlutterLogo()
      ),
    );
  }

}
