import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di_initializer.config.dart';
import 'package:lego_list/lego_list.dart' as lego_list;
import 'package:lego_navigation/di/di_initializer.dart' as lego_nav;

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.init;
  lego_nav.initLegoNavigationDependencies(); // <-- MISSING LINE YOU NEED
  lego_list.initLegoListDependencies(); // <-- add feature registration
}
