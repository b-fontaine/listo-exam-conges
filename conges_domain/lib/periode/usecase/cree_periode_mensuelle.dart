import '../model/periode.dart';

Period creePeriodeMensuelle(String name) {
  int year = int.parse(name.split("-").first);
  int month = int.parse(name.split("-").last);

  DateTime start = DateTime(year, month, 1);
  DateTime end = DateTime(year, month + 1, 0);

  Period periode = Period(name: name, dates: []);
  for (int i = 0; i < end.day; i++) {
    periode.dates.add(start.add(Duration(days: i)));
  }

  return periode;
}
