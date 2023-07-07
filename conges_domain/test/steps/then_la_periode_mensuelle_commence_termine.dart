import 'package:gherkin/gherkin.dart';

import '../support/period.world.dart';

StepDefinitionGeneric thenLaPeriodeMensuelleCommenceEtFinit() {
  return then2<String, String, PeriodWorld>(
      'La période mensuelle commence le {string} et finit le {string}',
          (start, end, context) async {
        var periode = context.world.periodeMensuelle;
        var minDate = periode.dates.reduce((a, b) => a.isBefore(b) ? a : b);
        var maxDate = periode.dates.reduce((a, b) => a.isAfter(b) ? a : b);
        context.expectMatch(minDate, DateTime.parse(start));
        context.expectMatch(maxDate, DateTime.parse(end));
      });
}
