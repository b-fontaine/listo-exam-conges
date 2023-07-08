import 'package:flutter_test/flutter_test.dart';

Future<void> thenISeeTextForCurrentYearOnlyOneTime(
    WidgetTester tester,
    String text,
    ) async {
  expect(find.text(text.replaceAll("YYYY", DateTime.now().year.toString())),
      findsOneWidget);
}
