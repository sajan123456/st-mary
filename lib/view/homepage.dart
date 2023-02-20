import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:stmary_project/bottom.dart';
import 'package:stmary_project/model/notice_model.dart';
import 'package:stmary_project/view/calendar.dart';
import 'package:stmary_project/view/menu.dart';
import 'package:stmary_project/view/notification_page.dart';

import '../constants.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({super.key});

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    double actualHeight = MediaQuery.of(context).size.height;
    double actualwidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          // color: Color.fromARGB(255, 81, 81, 81),
          width: double.infinity,
          child: Stack(children: [
            //logo container
            Container(
              color: Color.fromARGB(255, 118, 117, 203),
              padding: EdgeInsets.only(top: 25, bottom: 20),
              height: actualHeight * 0.22, // height of banner
              width: double.infinity,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      height: 55,
                      width: 55,
                      child: Image(
                        image:
                            AssetImage('assets/images/logo.png'), // logo image
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(
                        thickness: 2,
                        indent: 120,
                        endIndent: 120,
                        color: Color.fromARGB(255, 187, 187, 187)),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Text(
                      'Timeline',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              margin: EdgeInsets.only(top: 150),
              padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
              height: actualHeight * 0.75,
              //list of notification
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
                                            noticeDetails[index].noticeImage !=
                                                    ''
                                                ? (Image(
                                                    image: AssetImage(
                                                        noticeDetails[index]
                                                            .noticeImage!)))
                                                : Text(''),
                                            Text(
                                                noticeDetails[index]
                                                    .noticeDetails,
                                                style:
                                                    TextStyle(fontSize: kDesc)),
                                            Text(
                                                'St.Mary\'s Secondary School - Pokhara',
                                                style:
                                                    TextStyle(fontSize: kDesc)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                            Text(noticeDetails[index]
                                                .noticeDate),
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
                          elevation: 2,
                          shadowColor: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            height: 110,
                            width: double.infinity,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 243, 255),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //title
                                        Row(
                                          children: [
                                            Image(
                                                height: 18,
                                                width: 18,
                                                image: AssetImage(
                                                    'assets/images/notification.png')),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              noticeDetails[index].noticeTitle,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: kTitle),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          noticeDetails[index].noticeCategory,
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 128, 127, 127)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
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
                                                        BorderRadius.circular(
                                                            4)),
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
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Bottom(),
      ),
    );
  }
}
