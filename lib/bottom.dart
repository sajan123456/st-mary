import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:stmary_project/constants.dart';
import 'package:stmary_project/view/calendar.dart';
import 'package:stmary_project/view/homepage.dart';

import 'package:stmary_project/view/menu.dart';
import 'package:stmary_project/view/notification_page.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 225, 225, 255),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {
                currentIndex = 0;

                // Get.to(TimelinePage(), transition: Transition.noTransition);
                // Get.offUntil(TimelinePage(), (route) => false);\
                Get.off(TimelinePage(), transition: Transition.noTransition);
              },
              icon: currentIndex == 0
                  ? const Icon(
                      Icons.home,
                      color: kSelectedColor,
                      size: 25,
                    )
                  : const Icon(
                      Icons.home,
                      color: kUnselectedColor,
                      size: 25,
                    )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                currentIndex = 1;
                // Get.to(NotificationPage(), transition: Transition.noTransition);
                Get.offUntil(
                    // MaterialPageRoute(

                    //     builder: (context, ) => Calendar(), maintainState: true),

                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => NotificationPage()),
                    ModalRoute.withName('/'));
              },
              icon: currentIndex == 1
                  ? const Icon(
                      CupertinoIcons.bell_fill,
                      color: kSelectedColor,
                      size: 25,
                    )
                  : const Icon(
                      CupertinoIcons.bell,
                      color: kUnselectedColor,
                      size: 25,
                    )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                currentIndex = 2;

                Get.offUntil(
                    // MaterialPageRoute(

                    //     builder: (context, ) => Calendar(), maintainState: true),

                    PageRouteBuilder(pageBuilder: (_, __, ___) => Calendar()),
                    ModalRoute.withName('/'));
              },
              icon: currentIndex == 2
                  ? const Icon(
                      CupertinoIcons.calendar,
                      color: kSelectedColor,
                      size: 25,
                    )
                  : const Icon(
                      CupertinoIcons.calendar,
                      color: kUnselectedColor,
                      size: 25,
                    )),
          IconButton(
              isSelected: true,
              enableFeedback: false,
              onPressed: () {
                currentIndex = 3;

                Get.offUntil(
                    // MaterialPageRoute(

                    //     builder: (context, ) => Calendar(), maintainState: true),

                    PageRouteBuilder(pageBuilder: (_, __, ___) => MenuPage()),
                    ModalRoute.withName('/'));
              },
              icon: currentIndex == 3
                  ? const Icon(
                      Icons.widgets_sharp,
                      color: kSelectedColor,
                      size: 25,
                    )
                  : const Icon(
                      Icons.widgets_outlined,
                      color: kUnselectedColor,
                      size: 25,
                    )),
        ],
      ),
    );
  }
}
