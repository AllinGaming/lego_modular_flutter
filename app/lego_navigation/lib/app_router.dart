import 'package:auto_route/auto_route.dart';
import 'lego_list_page_wrapper.dart'; // 👈 local import
import 'lego_single_wrapper.dart'; // 👈 local import

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LegoListRouteWrapper.page, path: '/'),
        AutoRoute(
          page: LegoSingleRouteWrapper.page,
          path: '/lego/:title',
        ),
      ];
}
