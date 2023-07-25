import 'package:intl/intl.dart';

extension FileExtension on DateTime {
  DateTime nextDay() {
    return add(const Duration(days: 1));
  }

  DateTime beforeDay() {
    var date = subtract(const Duration(days: 1)).toString();
    return DateTime.parse(date);
  }

  DateTime nextMonth() {
    return DateTime(
      year,
      month + 1,
      day,
    );
  }

  DateTime beforeMonth() {
    return DateTime(
      year,
      month - 1,
      day,
    );
  }

  DateTime nextYear() {
    return DateTime(
      year + 1,
      month,
      day,
    );
  }

  DateTime beforeYear() {
    return DateTime(
      year - 1,
      month,
      day,
    );
  }

  DateTime setYear(String value) {
    return DateTime(
      int.tryParse(value) ?? year,
      month,
      day,
    );
  }

  DateTime setDay(String value) {
    return DateTime(
      year,
      month,
      int.tryParse(value) ?? day,
    );
  }

  List<int> calenderMonthDays() {
    List<int> days = [];
    var firstDayString = DateTime(
      year,
      month,
      1,
    ).toString();
    DateTime firstDay = DateTime.parse(firstDayString);
    var lastDayString = DateTime(year, month + 1, 0).toString();
    DateTime lastDay = DateTime.parse(lastDayString);
    DateTime current = firstDay;
    for (int index = 1; index < firstDay.weekday; index++) {
      current = current.beforeDay();
      days.add(current.day);
    }
    days = days.reversed.toList();
    current = this;
    for (int index = 1; index <= lastDay.day; index++) {
      days.add(index);
    }
    current = lastDay;
    for (int index = lastDay.weekday; index <= 7; index++) {
      current = current.nextDay();
      days.add(current.day);
    }
    return days;
  }

  String convertDateTimeWithFormat({String? format}) {
    DateFormat formatter = DateFormat(format ?? 'yyyy-MM-dd');
    return formatter.format(this);
  }
}
