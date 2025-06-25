// test/steps/i_have_a_widget_legosinglepage_with_title_bionicle.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lego_single/lego_single.dart';

Future<void> iHaveAWidgetLegosinglepageWithTitleBionicle(WidgetTester tester) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: LegoSinglePage(title: 'Bionicle'),
    ),
  );
  await tester.pumpAndSettle();
}
