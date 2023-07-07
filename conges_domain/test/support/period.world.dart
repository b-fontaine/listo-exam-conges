import 'package:gherkin/gherkin.dart';
import 'package:conges_domain/periode/model/periode.dart';

class  PeriodWorld extends World {
  final List<(DateTime, DateTime)> _cachedInputPeriods = [];
  final List<Period> _cachedPeriodesMensuelles = [];
  final List<DateTime> _cachedDates = [];

  void storeInputPeriod(DateTime start, DateTime end) {
    _cachedInputPeriods.add((start, end));
  }

  void storePeriodeMensuelle(Period periode) {
    _cachedPeriodesMensuelles.add(periode);
  }

  void storeDate(DateTime date) {
    _cachedDates.add(date);
  }

  (DateTime, DateTime) get inputPeriod => _cachedInputPeriods.last;
  Period get periodeMensuelle => _cachedPeriodesMensuelles.last;
  DateTime get date => _cachedDates.last;

  void clear() {
    _cachedInputPeriods.clear();
    _cachedPeriodesMensuelles.clear();
    _cachedDates.clear();
  }

  @override
  void dispose() {
    clear();
  }
}