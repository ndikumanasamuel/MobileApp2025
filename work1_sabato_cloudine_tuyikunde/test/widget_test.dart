// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:work1_sabato_cloudine_tuyikunde/main.dart';

void main() {
  testWidgets('App renders month names correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify that specific month names are found in the UI.
    expect(find.text('MUTARAMA'), findsOneWidget);
    expect(find.text('UKUBOZA'), findsOneWidget);
    expect(find.text('NON_EXISTENT_MONTH'), findsNothing);
  });

  testWidgets('App has correct app bar title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Check if the app bar title is present.
    expect(find.text('Ikinyarwanda'), findsOneWidget);
  });
}