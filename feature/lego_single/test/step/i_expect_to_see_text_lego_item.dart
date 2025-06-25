import 'package:flutter_test/flutter_test.dart';

import 'i_see_text.dart';

/// Usage: I expect to see text "Lego Item"
Future<void> iExpectToSeeTextLegoItem(WidgetTester tester) async {
  iSeeText(tester, 'Lego Item');
}
