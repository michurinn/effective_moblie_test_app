import 'package:effective_test_work/src/local_storage/route_default_info_storage/i_route_default_info_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RouteDefaultInfoStorage implements IRouteDefaultInfoStorage {
  final SharedPreferences _prefs;

  RouteDefaultInfoStorage({required SharedPreferences prefs}) : _prefs = prefs;
  @override
  String? getDefaultRouteName() {
    return _prefs.getString('defaultRouteName');
  }

  @override
  void saveDefaultRouteName(String routeName) {
    _prefs.setString('defaultRouteName', routeName);
  }
}
