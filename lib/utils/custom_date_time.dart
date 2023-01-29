import 'package:intl/intl.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class CustomDateTime
{
  static String format2(Date d) {
    final f = d.formatter;

    return '${f.wN}  ${f.d} ${f.mN} ${f.yyyy} ${DateFormat('kk:mm').format(
      DateTime.now(),
    )}';
  }

  static String format1(Date d) {
    final f = d.formatter;
    return '  ${f.wN}  ${f.d} ${f.mN} ${f.yyyy}';
  }

  static getDate() => format1(Jalali.fromDateTime(DateTime.now()));
  static getDateTime() => format2(Jalali.fromDateTime(DateTime.now()));
}