import 'package:flutter_test/flutter_test.dart';
import 'dart:async';
import 'package:gherkin/gherkin.dart';

import 'steps/given_le_salarie_pose_un_conge.dart';
import 'steps/then_la_periode_mensuelle_commence_termine.dart';
import 'steps/when_je_mets_a_jour_la_periode_nommee.dart';
import 'support/period.world.dart';

Future<void> main() {
  final steps = [
    givenLeSalarieAPoseLeCongeDuAu(),
    whenJeMetsAJourLaPeriodeNommee(),
    thenLaPeriodeMensuelleCommenceEtFinit(),
  ];

  final config = TestConfiguration(
    features: [RegExp(r'features/.+\.feature')],
    reporters: [
      StdoutReporter(MessageLevel.error),
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(),
    ],
    hooks: [],
    customStepParameterDefinitions: [],
    createWorld: (config) => Future.value(PeriodWorld()),
    stepDefinitions: steps,
    stopAfterTestFailed: true,
  );

  return GherkinRunner().execute(config);
}