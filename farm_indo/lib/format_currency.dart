import 'package:intl/intl.dart';

String formatRP(int value) {
  final String results = NumberFormat.currency(
    locale: 'id',
    symbol: 'Rp. ',
    decimalDigits: 2,
  ).format(double.parse(value.toString()));

  return results;
}
