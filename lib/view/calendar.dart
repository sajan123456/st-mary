import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:stmary_project/bottom.dart';
import 'package:stmary_project/constants.dart';
import 'package:stmary_project/view/homepage.dart';
import 'package:stmary_project/view/menu.dart';
import 'package:stmary_project/view/notification_page.dart';
import 'package:table_calendar/table_calendar.dart';

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
          backgroundColor: kPrimaryColor,
          title: Text('Calendar'),
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios),
              onPressed: () =>
                  Navigator.of(context).popUntil((route) => route.isFirst)),
        ),
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
        bottomNavigationBar: Bottom(),
      ),
    );
  }
}
