import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:red_cross_hyd/utils/appRoute.dart';

drawer(BuildContext context) {
  return Drawer(
      child: Column(
    children: <Widget>[
      Expanded(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/man.png"),
                              fit: BoxFit.fill)),
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 25),
                    link(MembershipImage, MembershipLabel),
                    link(BloodDonorImage, BloodDonorLabel),
                    link(HomeNursingImage, HomeNursingLabel),
                    link(BloodBankImage, BloodBankLabel),
                    link(LocateImage, LocateLabel),
                    link(TrainigImage, TrainingLabel),
                    link(VolunteerImage, VolunteerLabel),
                    link(AboutPageImage, AboutPageLabel),
                    link(ContactUsImage, ContactUsLabel),
                  ],
                )),
          ],
        ),
      ))
    ],
  ));
}

link(String imageName, String labelName) {
  return Container(
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.all(5),
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
    child: Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(image: AssetImage(imageName))),
          width: 24,
          height: 24,
          margin: const EdgeInsets.only(right: 5),
        ),
        Text(labelName)
      ],
    ),
  );
}
