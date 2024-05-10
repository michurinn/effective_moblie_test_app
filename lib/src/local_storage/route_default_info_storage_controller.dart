import 'package:effective_test_work/src/local_storage/route_default_info_storage/i_route_default_info_storage.dart';

class RouteDefaultInfoController {
  final IRouteDefaultInfoStorage _storage;

  RouteDefaultInfoController({required IRouteDefaultInfoStorage storage})
      : _storage = storage;

  void saveDefaultRoute(String routeName) {
    _storage.saveDefaultRouteName(routeName);
  }

  String? getDefaultRoute() {
    return _storage.getDefaultRouteName();
  }
}
