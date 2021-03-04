import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:i_am_rich/main.dart';

void main() {
  const String appTitle = 'I Am Rich';

  testWidgets('should have one materialApp', (WidgetTester tester) async {
    await tester.pumpWidget(IAmRich());

    final materialAppFinder = find.byType(MaterialApp);

    expect(materialAppFinder, findsOneWidget);
  });

  testWidgets('should have a valid materialApp title',
      (WidgetTester tester) async {
    await tester.pumpWidget(IAmRich());

    final materialAppWithTitle = find.widgetWithText(MaterialApp, appTitle);

    expect(materialAppWithTitle, findsOneWidget);
  });

  testWidgets('should have one Scaffold', (WidgetTester tester) async {
    await tester.pumpWidget(IAmRich());

    final scaffoldFinder = find.byType(Scaffold);

    expect(scaffoldFinder, findsOneWidget);
  });

  testWidgets('should have one appBar', (WidgetTester tester) async {
    await tester.pumpWidget(IAmRich());

    final appBarFinder = find.byType(AppBar);

    expect(appBarFinder, findsOneWidget);
  });

  testWidgets('should have a valid appBar title', (WidgetTester tester) async {
    await tester.pumpWidget(IAmRich());

    final appBarWithTitleFinder = find.widgetWithText(AppBar, appTitle);

    expect(appBarWithTitleFinder, findsOneWidget);
  });

  testWidgets('should have a centered image', (WidgetTester tester) async {
    await tester.pumpWidget(IAmRich());

    final centerFinder = find.byType(Center);
    final imageFinder = find.byType(Image);
    final descendantFinder = find.descendant(of: centerFinder, matching: imageFinder);
  
    expect(descendantFinder, findsOneWidget);
  });
}
