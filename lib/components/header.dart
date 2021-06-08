import 'package:flutter/material.dart';
import 'package:red_cross_hyd/theme/appbarTheme.dart';

final menuIcon = IconButton(icon: Icon(Icons.menu), onPressed: null);
List _options = [
  {"name": "Profile", "icon": Icons.verified_user_rounded},
  {"name": "Settings", "icon": Icons.settings_applications_rounded},
  {"name": "Logout", "icon": Icons.exit_to_app_rounded}
];
header(String headerTitle, String imagePath) {
  return AppBar(
    actionsIconTheme: appBarIconTheme,
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
        ),
      ],
    ),
    actions: [
      PopupMenuButton(
        itemBuilder: (BuildContext bc) {
          return _options.map((item) => PopupMenuItem(
            child: Row(
                children: [
                  Icon(item['icon']),
                  Padding(padding: EdgeInsets.only(left:10),child: Text(item["name"]),)
                ],
            )
            )
            ).toList();
        },
        child: Icon(
          Icons.more_vert_outlined,
          size: 20,
        ),
        onSelected: (value) {},
      ),
    ],
  );
}
