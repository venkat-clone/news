import 'package:flutter/material.dart';

String getDynamicDateDifference(DateTime date) {
  final now = DateTime.now();
  final diff = now.difference(date);
  if (diff.inDays > 0) {
    return '${diff.inDays} days ago';
  } else if (diff.inHours > 0) {
    return '${diff.inHours} hours ago';
  } else if (diff.inMinutes > 0) {
    return '${diff.inMinutes} minutes ago';
  } else {
    return '${diff.inSeconds} seconds ago';
  }
}

String getDynamicDate(DateTime date) {
  final now = DateTime.now();
  final sameYear = now.year == date.year;
  final sameMonth = now.month == date.month && sameYear;

  final sameDay = now.day == date.day && sameMonth && sameYear;
  final yesterday = now.day - date.day == 1 && sameMonth && sameYear;
  final thisWeek = now.weekday - date.weekday < 7 && sameMonth && sameYear;
  final formattedHour = date.hour > 12 ? date.hour - 12 : date.hour;
  final period = date.hour >= 12 ? 'PM' : 'AM';
  final time = '$formattedHour:${date.minute} $period';
  if (sameDay) {
    return 'Today $time';
  } else if (yesterday) {
    return 'Yesterday $time';
  } else if (thisWeek) {
    return '${formatWeekday(date.weekday)} $time';
  } else if (sameMonth) {
    return '${date.day} $time';
  } else if (sameYear) {
    return '${date.day} ${formatMonth(date.month)} ${date.hour}:${date.minute}';
  } else {
    return '${date.day} ${formatMonth(date.month)} ${date.year} ${date.hour}:${date.minute}';
  }
}


String formatWeekday(int week) {
  List<String> weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  return weekdays[week - 1];
}

String formatMonth(int month) {
  List<String> months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  return months[month - 1];
}
