import 'package:flutter/material.dart';
import 'package:red_cross_hyd/theme/appbarTheme.dart';

final menuIcon = IconButton(icon: Icon(Icons.menu), onPressed: null);
final header = AppBar(
  actionsIconTheme: appBarIconTheme,
  leading: menuIcon,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/red-cross.png',
        fit: BoxFit.contain,
        height: 32,
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        child: Text('Blood Donors'),
      )
    ],
  ),
  actions: [
    Icon(Icons.more_vert),
  ],
);
