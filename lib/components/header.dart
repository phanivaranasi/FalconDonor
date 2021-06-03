import 'package:flutter/material.dart';
import 'package:red_cross_hyd/theme/appbarTheme.dart';

final menuIcon = IconButton(icon: Icon(Icons.menu), onPressed: null);

header(String headerTitle,String imagePath) {
  return AppBar(
    actionsIconTheme: appBarIconTheme,
    leading: menuIcon,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.contain,
          height: 32,
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(headerTitle),
        )
      ],
    ),
    actions: [
      Icon(Icons.more_vert),
    ],
  );
}
