import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/core/router/app_route_paths.dart';
import 'package:effective_test_work/src/find_tickets/di/find_tickets_flow.dart';
import 'package:effective_test_work/src/find_tickets/di/route_settings_flow.dart';
import 'package:effective_test_work/src/find_tickets/di/tickets_flow.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/feed_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/hotels_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/main_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/mock_with_back_button_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/profile_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/subscriptions_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Flow')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            initial: true,
            path: AppRoutePaths.mainPath,
            page: MainPageRoute.page,
            children: [
              AutoRoute(
                path: AppRoutePaths.ticketInitialPath,
                page: FindTicketsFlowRoute.page,
                initial: true,
              ),
              AutoRoute(
                path: AppRoutePaths.hotelsPath,
                page: HotelsPageRoute.page,
              ),
              AutoRoute(
                path: AppRoutePaths.feedPath,
                page: FeedPageRoute.page,
              ),
              AutoRoute(
                path: AppRoutePaths.mockWithBackButtonPath,
                page: MockWithBackButtonPageRoute.page,
              ),
              AutoRoute(
                path: AppRoutePaths.subscriptionsPath,
                page: SubscriptionsPageRoute.page,
              ),
              AutoRoute(
                path: AppRoutePaths.routeSettingsPath,
                page: RouteSettingsFlowRoute.page,
              ),
              AutoRoute(
                path: AppRoutePaths.profilePath,
                page: ProfilePageRoute.page,
              ),
              AutoRoute(
                path: AppRoutePaths.buyTicketsPath,
                page: BuyTicketsFlowRoute.page,
              ),
            ])
      ];
}
