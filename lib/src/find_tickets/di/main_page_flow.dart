import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/main_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/route_settings_change_notifier.dart/route_settings_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class MainPageFlow extends StatelessWidget implements AutoRouteWrapper {
  const MainPageFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainPage();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RouteSettingsChangeNotifier(), child: this);
  }
}
