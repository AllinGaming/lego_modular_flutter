import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di_initializer.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initLegoListGetIt', // <- unique name
)
void initLegoListDependencies() => getIt.$initLegoListGetIt();