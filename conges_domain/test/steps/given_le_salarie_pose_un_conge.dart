import 'package:gherkin/gherkin.dart';

import '../support/period.world.dart';

StepDefinitionGeneric givenLeSalarieAPoseLeCongeDuAu() {
  return given2<String, String, PeriodWorld>(
      'Le salarié a posé un congé du {string} au {string}',
          (start, end, context) async {
        context.world.storeInputPeriod(DateTime.parse(start), DateTime.parse(end));
      });
}