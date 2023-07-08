import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeTextForCurrentYear(
  WidgetTester tester,
  String text,
) async {
  expect(find.text(text.replaceAll("YYYY", DateTime.now().year.toString())),
      findsOneWidget);
}
