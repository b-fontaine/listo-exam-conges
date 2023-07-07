import 'package:gherkin/gherkin.dart';
import 'package:conges_domain/periode/usecase/cree_periode_mensuelle.dart';
import 'package:conges_domain/periode/usecase/retire_conges.dart';

import '../support/period.world.dart';

StepDefinitionGeneric whenJeMetsAJourLaPeriodeNommee() {
  return when1<String, PeriodWorld>(
      'Je mets à jour la période nommée {string}', (name, context) async {
    var periode = creePeriodeMensuelle(name);
    var conges = context.world.inputPeriod;
    context.world
        .storePeriodeMensuelle(retireConges(conges.$1, conges.$2, periode));
  });
}
