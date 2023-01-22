import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:stmary_project/model/menu_items.dart';

import '../constants.dart';
import 'calendar.dart';
import 'homepage.dart';
import 'notification_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    double actualHeight = MediaQuery.of(context).size.height;
    double actualwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          actions: [
            Row(
              children: [
                Icon(Icons.account_circle_outlined),
                SizedBox(
                  width: 20,
                )
              ],
            )
          ],
          backgroundColor: Color.fromARGB(255, 118, 117, 203),
          title: Text('Calendar')),
      body: Container(
          //main container
          padding: EdgeInsets.symmetric(horizontal: 12),
          height: actualHeight * 0.90,
          // color: Colors.greenAccent,
          child: ListView.builder(
            itemCount: menuItems.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(8),
                    elevation: 1,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 243, 255),
                          borderRadius: BorderRadius.circular(8)),
                      // margin: EdgeInsets.only(top: 18),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 225, 225, 255),
                                borderRadius: BorderRadius.circular(8)),
                            width: 70,
                            height: 65,
                            child: Image(
                                image: AssetImage(menuItems[index].menuImage)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  menuItems[index].menuTitle,
                                  style: TextStyle(
                                      fontSize: kTitle,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  menuItems[index].menuDesc,
                                  style: TextStyle(
                                    fontSize: kDesc,
                                    color: Color.fromARGB(255, 68, 68, 68),
                                  ),
                                  maxLines: 2,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          )),
      bottomNavigationBar: Container(
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
              isSelected: true,
              enableFeedback: false,
              onPressed: () {
                Get.to(Homepage());
              },
              icon: const Icon(
                CupertinoIcons.home,
                color: Color.fromARGB(255, 62, 61, 154),
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Get.to(NotificationPage());
              },
              icon: const Icon(
                CupertinoIcons.bell,
                color: Color.fromARGB(255, 114, 114, 114),
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Get.to(Calendar());
              },
              icon: const Icon(
                CupertinoIcons.calendar,
                color: Color.fromARGB(255, 114, 114, 114),
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Get.to(MenuPage());
              },
              icon: const Icon(
                Icons.widgets_outlined,
                color: Color.fromARGB(255, 114, 114, 114),
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
