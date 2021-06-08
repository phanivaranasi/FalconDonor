import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:red_cross_hyd/components/header.dart';
import 'package:red_cross_hyd/components/navigation.dart';
import 'package:red_cross_hyd/pages/about.dart';
import 'package:red_cross_hyd/pages/bloodbank.dart';
import 'package:red_cross_hyd/pages/blooddonor.dart';
import 'package:red_cross_hyd/pages/contactus.dart';
import 'package:red_cross_hyd/pages/homenursing.dart';
import 'package:red_cross_hyd/pages/locatenearby.dart';
import 'package:red_cross_hyd/pages/login.dart';
import 'package:red_cross_hyd/pages/membership.dart';
import 'package:red_cross_hyd/pages/training.dart';
import 'package:red_cross_hyd/pages/volunteer.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

class DashboardPage extends StatefulWidget {
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final content = Scaffold(
        appBar: header('Blood Bank', LogoImage),
        drawer: drawer(context),
        body: Center(
            child: Container(
          child: GridView.count(
            crossAxisCount: 3,
            children: <Widget>[
              dashboardIcon(
                  MembershipImage, MembershipLabel, AppRoutes.Membership),
              dashboardIcon(
                  BloodDonorImage,BloodDonorLabel, AppRoutes.BloodDonor),
              dashboardIcon(
                  HomeNursingImage, HomeNursingLabel, AppRoutes.HouseNursing),
              dashboardIcon(BloodBankImage, 'Blood Bank', AppRoutes.BloodBank),
              dashboardIcon(LocateImage, 'Locate Near By', AppRoutes.Locate),
              dashboardIcon(TrainigImage, 'Training', AppRoutes.Training),
              dashboardIcon(VolunteerImage, 'Volunteer', AppRoutes.Volunteer),
              dashboardIcon(AboutPageImage, 'About', AppRoutes.About),
              dashboardIcon(ContactUsImage, 'Contact', AppRoutes.Contact)
            ],
          ),
        )));
    return content;
    //return new WillPopScope(child: content, onWillPop: () async => false);
  }

  Widget dashboardIcon(
      String imagePath, String imageName, AppRoutes appRoutes) {
    return InkWell(
      child: Stack(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(45),
              child: Image.asset(imagePath, fit: BoxFit.cover)),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(17),
            child: Text(imageName),
          )
        ],
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          switch (appRoutes) {
            case AppRoutes.Membership:
              return MembershipPage();
              break;
            case AppRoutes.BloodDonor:
              return BloodDonorPage();
              break;
            case AppRoutes.BloodBank:
              return BloodbankPage();
              break;
            case AppRoutes.Contact:
              return ContactUsPage();
              break;
            case AppRoutes.HouseNursing:
              return HomeNursingPage();
              break;
            case AppRoutes.Locate:
              return LocatUsPage();
              break;
            case AppRoutes.Training:
              return TrainigPage();
              break;
            case AppRoutes.Volunteer:
              return VolunteerPage();
              break;
            case AppRoutes.About:
              return AboutPage();
              break;

            default:
              return MembershipPage();
          }
        }));
      },
    );
  }
}
