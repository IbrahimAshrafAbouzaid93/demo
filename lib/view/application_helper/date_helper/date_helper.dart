import 'package:intl/intl.dart';

class DateHelper {
  DateHelper._internal();

  static final DateHelper _instance = DateHelper._internal();

  factory DateHelper() => _instance;
  final DateFormat shortDateFormat = DateFormat("yyyy-MM-dd", "en");

  getFormattedDate({DateFormat? formatter, DateTime? dateTime}) {
    if (formatter != null) {
      return formatter.format(dateTime!);
    } else {
      return shortDateFormat.format(dateTime!);
    }
  }
}
