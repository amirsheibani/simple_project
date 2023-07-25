import 'package:intl/intl.dart';

extension StringExtension on int {
  bool toBool() {
    return this > 0;
  }

  String numberFormat() {
    var formatter = NumberFormat('#,##0', 'en_US');
    return formatter.format(this);
  }
}
