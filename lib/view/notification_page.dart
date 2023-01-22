import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:stmary_project/model/notice_model.dart';
import 'package:stmary_project/view/homepage.dart';

import '../constants.dart';
import 'calendar.dart';
import 'menu.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final bool currentTab = true;
  @override
  Widget build(BuildContext context) {
    double actualHeight = MediaQuery.of(context).size.height;
    double actualwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 118, 117, 203),
          title: Text('Notifications')),
      body: Container(
        padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
        height: actualHeight * 0.90,
        child: ListView.builder(
          itemCount: noticeDetails.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        height: 332,
                        width: actualwidth * 0.9,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 228, 228),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  noticeDetails[index].noticeTitle,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                color: Color.fromARGB(255, 219, 219, 219),
                                padding: EdgeInsets.all(4),
                                height: 170,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListView(
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      noticeDetails[index].noticeImage != ''
                                          ? (Image(
                                              image: AssetImage(
                                                  noticeDetails[index]
                                                      .noticeImage!)))
                                          : Text(''),
                                      Text(noticeDetails[index].noticeDetails,
                                          style: TextStyle(fontSize: kDesc)),
                                      Text(
                                          'St.Mary\'s Secondary School - Pokhara',
                                          style: TextStyle(fontSize: kDesc)),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Parents Presence :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: kTitle),
                                    ),
                                    Text(
                                      'Required',
                                      style: TextStyle(
                                          fontSize: kTitle,
                                          color: Colors.redAccent),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        size: 20,
                                        Icons.calendar_month,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(noticeDetails[index].noticeDate),
                                    ],
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text('Done'))
                                ],
                              )
                            ]),
                      ),
                    );
                  },
                );
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(12),
                    elevation: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 243, 255),
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 225, 225, 255),
                                borderRadius: BorderRadius.circular(8)),
                            height: 80,
                            width: 80,
                            child: Center(
                              child: Text(
                                noticeDetails[index].noticeDate,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 68, 68, 68),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    noticeDetails[index].noticeTitle,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: kTitle),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          noticeDetails[index].noticeDetails,
                                          style: TextStyle(
                                              fontSize: kDesc,
                                              color: Color.fromARGB(
                                                  255, 101, 101, 101)),
                                          maxLines: 3,
                                        ),
                                      ),
                                      noticeDetails[index].noticeImage != ''
                                          ? Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              width: 55,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                child: (Image(
                                                    image: AssetImage(
                                                        noticeDetails[index]
                                                            .noticeImage!))),
                                              ),
                                            )
                                          : Text(''),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
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
                color: Color.fromARGB(255, 114, 114, 114),
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
