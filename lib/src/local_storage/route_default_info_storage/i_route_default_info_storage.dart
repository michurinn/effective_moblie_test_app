abstract interface class IRouteDefaultInfoStorage {
  /// Returns the default route name.
  String? getDefaultRouteName();

  void saveDefaultRouteName(String routeName);
}
