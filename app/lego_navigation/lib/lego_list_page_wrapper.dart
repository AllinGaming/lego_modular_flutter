import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lego_list/lego_list.dart';
import 'package:lego_list/src/ui/lego_list_page.dart';
import 'package:lego_navigation/di/di_initializer.dart' as di;

@RoutePage()
class LegoListPageWrapper extends StatelessWidget {
  const LegoListPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final navigation = di.getIt<LegoListNavigation>();
    return LegoListPage(navigation: navigation);
  }
}
