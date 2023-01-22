import 'package:flutter/cupertino.dart';

class MenuItems {
  final String menuTitle;
  final String menuDesc;
  final String menuImage;

  MenuItems(
      {required this.menuTitle,
      required this.menuDesc,
      required this.menuImage});
}

List<MenuItems> menuItems = [
  MenuItems(
      menuTitle: 'Account',
      menuDesc: 'Monthly Bills and Receipts',
      menuImage: 'assets/images/acc.png'),
  MenuItems(
      menuTitle: 'Online Class',
      menuDesc: 'Join Online Class',
      menuImage: 'assets/images/onlineclass.png'),
  MenuItems(
      menuTitle: 'E=Classroom',
      menuDesc: 'Multiple Choice Questions',
      menuImage: 'assets/images/e class.png'),
  MenuItems(
      menuTitle: 'Assignments',
      menuDesc: 'View and Submit Assignments',
      menuImage: 'assets/images/multiple.png'),
  MenuItems(
      menuTitle: 'Attendance',
      menuDesc: 'Monthly and aggregate Reports',
      menuImage: 'assets/images/attendance.png'),
  MenuItems(
      menuTitle: 'Homework',
      menuDesc: 'Daily Homeworks',
      menuImage: 'assets/images/homework.png'),
  MenuItems(
      menuTitle: 'Report Card',
      menuDesc: 'View Exam Results',
      menuImage: 'assets/images/report.png'),
  MenuItems(
      menuTitle: 'Routine',
      menuDesc: 'Exams and Class Routine',
      menuImage: 'assets/images/routine.png'),
  MenuItems(
      menuTitle: 'Reading Materials',
      menuDesc: 'View Reading Materials, Notes And Resources',
      menuImage: 'assets/images/reading.png'),
  MenuItems(
      menuTitle: 'Event',
      menuDesc: 'Programs and Activities',
      menuImage: 'assets/images/event.png'),
  MenuItems(
      menuTitle: 'Gallery',
      menuDesc: 'Photo Gallery',
      menuImage: 'assets/images/gallery.png'),
  MenuItems(
      menuTitle: 'Library',
      menuDesc: 'Issued and Returned Books',
      menuImage: 'assets/images/library.png'),
  MenuItems(
      menuTitle: 'Download',
      menuDesc: 'Study Material and Other Files',
      menuImage: 'assets/images/download.png'),
  MenuItems(
      menuTitle: 'Video',
      menuDesc: 'Study Material and Other Files',
      menuImage: 'assets/images/video.png'),
];
