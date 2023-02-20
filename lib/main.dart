import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:stmary_project/view/calendar.dart';

import 'package:stmary_project/view/homepage.dart';

import 'package:stmary_project/view/menu.dart';

import 'package:stmary_project/view/notification_page.dart';

void main() {
  runApp(const StMaryApp());
}

class StMaryApp extends StatelessWidget {
  const StMaryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'St.Mary School',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 118, 117, 203),
      ),
      debugShowCheckedModeBanner: false,
      home: const TimelinePage(),
    );
  }
}
