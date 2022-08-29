import 'package:get/get.dart';
import 'package:intl/intl.dart';

extension DateFormatter on DateTime {
  String? customFormat(String format) =>
      DateFormat(format, Get.locale?.languageCode ?? 'ar').format(this);
}
