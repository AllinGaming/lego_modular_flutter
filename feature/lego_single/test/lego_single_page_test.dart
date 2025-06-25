// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/i_have_a_widget_legosinglepage_with_title_bionicle.dart';
import './step/i_see_text.dart';

void main() {
  group('''Display Lego Item''', () {
    testWidgets('''Showing a title''', (tester) async {
      await iHaveAWidgetLegosinglepageWithTitleBionicle(tester);
      await iSeeText(tester, 'Lego Item');
      await iSeeText(tester, 'Bionicle');
    });
  });
}
