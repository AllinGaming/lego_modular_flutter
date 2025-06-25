import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lego_single/lego_single.dart';

@RoutePage()
class LegoSinglePageWrapper extends StatelessWidget {
  final String title;

  const LegoSinglePageWrapper({required this.title});

  @override
  Widget build(BuildContext context) {
    return LegoSinglePage(title: title);
  }
}
