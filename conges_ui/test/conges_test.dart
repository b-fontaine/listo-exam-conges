// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_see_text.dart';
import './step/i_tap_text.dart';
import './step/i_see_text_for_current_year.dart';
import './step/then_i_dont_see_text_for_current_year.dart';
import './step/then_i_see_text_for_current_year_only_one_time.dart';

void main() {
  group('''Conges''', () {
    testWidgets('''I see Inputs''', (tester) async {
      await theAppIsRunning(tester);
      await iSeeText(tester, 'Période mensuelle');
      await iSeeText(tester, 'Début des congés');
      await iSeeText(tester, 'Fin des congés');
    });
    testWidgets('''I put my vacations''', (tester) async {
      await theAppIsRunning(tester);
      await iTapText(tester, 'Période mensuelle');
      await iTapText(tester, 'JUL');
      await iTapText(tester, 'OK');
      await iTapText(tester, 'Début des congés');
      await iTapText(tester, '8');
      await iTapText(tester, 'OK');
      await iTapText(tester, 'Fin des congés');
      await iTapText(tester, '20');
      await iTapText(tester, 'OK');
      await iTapText(tester, 'Calculate Working Days');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-01');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-02');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-03');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-04');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-05');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-06');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-07');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-21');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-22');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-23');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-24');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-25');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-26');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-27');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-28');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-29');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-30');
      await iSeeTextForCurrentYear(tester, 'YYYY-07-31');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-09');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-10');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-11');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-12');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-13');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-14');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-15');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-16');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-17');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-18');
      await thenIDontSeeTextForCurrentYear(tester, 'YYYY-07-19');
      await thenISeeTextForCurrentYearOnlyOneTime(tester, 'YYYY-07-08');
      await thenISeeTextForCurrentYearOnlyOneTime(tester, 'YYYY-07-20');
    });
  });
}
