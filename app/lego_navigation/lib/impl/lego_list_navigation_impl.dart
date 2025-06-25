import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:lego_list/lego_list.dart';
import '../app_router.dart';

@LazySingleton(as: LegoListNavigation)
class LegoListNavigationImpl implements LegoListNavigation {
  @override
  void openSingle(BuildContext context, String title) {
    context.router.push(LegoSingleRouteWrapper(title: title));
  }
}