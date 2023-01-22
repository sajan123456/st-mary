import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:stmary_project/view/homepage.dart';

void main() {
  runApp(const StMaryApp());
}

class StMaryApp extends StatelessWidget {
  const StMaryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
