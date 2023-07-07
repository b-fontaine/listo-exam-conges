import '../model/periode.dart';

Period retireConges(DateTime start, DateTime end, Period periode) {
  List<DateTime> dates = [];
  for (DateTime date in periode.dates) {
    if (date.isBefore(start) || date.isAfter(end)) {
      dates.add(date);
    }
  }
  return Period(name: periode.name, dates: dates);
}