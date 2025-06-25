// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [LegoListPageWrapper]
class LegoListRouteWrapper extends PageRouteInfo<void> {
  const LegoListRouteWrapper({List<PageRouteInfo>? children})
      : super(LegoListRouteWrapper.name, initialChildren: children);

  static const String name = 'LegoListRouteWrapper';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LegoListPageWrapper();
    },
  );
}

/// generated route for
/// [LegoSinglePageWrapper]
class LegoSingleRouteWrapper extends PageRouteInfo<LegoSingleRouteWrapperArgs> {
  LegoSingleRouteWrapper({required String title, List<PageRouteInfo>? children})
      : super(
          LegoSingleRouteWrapper.name,
          args: LegoSingleRouteWrapperArgs(title: title),
          initialChildren: children,
        );

  static const String name = 'LegoSingleRouteWrapper';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LegoSingleRouteWrapperArgs>();
      return LegoSinglePageWrapper(title: args.title);
    },
  );
}

class LegoSingleRouteWrapperArgs {
  const LegoSingleRouteWrapperArgs({required this.title});

  final String title;

  @override
  String toString() {
    return 'LegoSingleRouteWrapperArgs{title: $title}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LegoSingleRouteWrapperArgs) return false;
    return title == other.title;
  }

  @override
  int get hashCode => title.hashCode;
}
