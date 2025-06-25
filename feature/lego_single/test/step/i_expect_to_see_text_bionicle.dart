import 'package:flutter_test/flutter_test.dart';

import 'i_see_text.dart';

/// Usage: I expect to see text "Bionicle"
Future<void> iExpectToSeeTextBionicle(WidgetTester tester) async {
  iSeeText(tester, 'Bionicle');
}
