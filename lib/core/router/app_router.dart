import 'package:auto_route/auto_route.dart';
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
            path: '/main',
            page: MainPageRoute.page,
            children: [
              AutoRoute(
                path: 'tickets',
                page: FindTicketsFlowRoute.page,
                initial: true,
              ),
              AutoRoute(
                path: 'hotels',
                page: HotelsPageRoute.page,
              ),
              AutoRoute(
                path: 'feed',
                page: FeedPageRoute.page,
              ),
              AutoRoute(
                path: 'mockWithBakcButton',
                page: MockWithBackButtonPageRoute.page,
              ),
              AutoRoute(
                path: 'subscriptions',
                page: SubscriptionsPageRoute.page,
              ),
              AutoRoute(
                path: 'route_settings_page',
                page: RouteSettingsFlowRoute.page,
              ),
              AutoRoute(
                path: 'profile',
                page: ProfilePageRoute.page,
              ),
              AutoRoute(
                path: 'buy_tickets',
                page: BuyTicketsFlowRoute.page,
              ),
            ])
      ];
}
