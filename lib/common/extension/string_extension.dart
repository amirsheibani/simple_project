import 'package:intl/intl.dart';

extension StringExtension on String {
  bool toBool() {
    switch (toLowerCase()) {
      case 'true':
        return true;
      case 'false':
        return false;
      default:
        return false;
    }
  }

  String convertDateTime({bool? showYear = false}) {
    DateTime dateTime = DateTime.parse(this);
    return '${DateFormat.d().format(dateTime)}th ${showYear! ? DateFormat.yMMM().format(dateTime) : DateFormat.MMM().format(dateTime)}';
  }

  String convertDateTimeWithYear() {
    DateTime dateTime = DateTime.parse(this);
    return DateFormat.yMMMEd().format(dateTime).replaceAll(',', '');
  }

  DateTime getDateTime() {
    return DateTime.parse(this);
  }

  String titleCase() {
    return replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.isNotEmpty ? '${str[0].toUpperCase()}${str.substring(1).toLowerCase()}' : '').join(' ');
  }

  String convertDateTimeWithFormat({String? format}) {
    DateFormat formatter = DateFormat(format ?? 'yyyy-MM-DD');
    DateTime dateTime = DateTime.parse(this);
    return formatter.format(dateTime);
  }

  String numberFormat() {
    int? value = int.tryParse(this);
    if (value != null) {
      var formatter = NumberFormat('#,##0', 'en_US');
      return formatter.format(value);
    }
    return '';
  }
}
