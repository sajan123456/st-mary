import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import 'homepage.dart';
import 'menu.dart';
import 'notification_page.dart';

class Calendar extends StatefulWidget {
  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  // const Calendar({super.key});
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 118, 117, 203),
          title: Text('Calendar')),
      body: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(top: 20),
          child: TableCalendar(
            rowHeight: 40,
            headerStyle: HeaderStyle(
              headerMargin: EdgeInsets.only(bottom: 20),
              formatButtonVisible: false,
              titleCentered: true,
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Color.fromARGB(255, 118, 117, 203),
              ),
            ),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: ((day) => isSameDay(day, today)),
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: today,
            onDaySelected: _onDaySelected,
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
              onPressed: () {},
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
    ));
  }
}
