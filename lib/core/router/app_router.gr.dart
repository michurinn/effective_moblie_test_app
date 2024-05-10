// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BuyTicketsFlowRoute.name: (routeData) {
      final args = routeData.argsAs<BuyTicketsFlowRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: BuyTicketsFlow(
          placeOfArrival: args.placeOfArrival,
          placeOfDeparture: args.placeOfDeparture,
          date: args.date,
          countOfPassengers: args.countOfPassengers,
          key: args.key,
        )),
      );
    },
    FeedPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FeedPage(),
      );
    },
    FindTicketsFlowRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const FindTicketsFlow()),
      );
    },
    HotelsPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HotelsPage(),
      );
    },
    MainPageFlowRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MainPageFlow()),
      );
    },
    MockWithBackButtonPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MockWithBackButtonPage(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    RouteSettingsFlowRoute.name: (routeData) {
      final args = routeData.argsAs<RouteSettingsFlowRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: RouteSettingsFlow(
          placeOfArrival: args.placeOfArrival,
          placeOfDeparture: args.placeOfDeparture,
          key: args.key,
        )),
      );
    },
    SubscriptionsPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SubscriptionsPage(),
      );
    },
  };
}

/// generated route for
/// [BuyTicketsFlow]
class BuyTicketsFlowRoute extends PageRouteInfo<BuyTicketsFlowRouteArgs> {
  BuyTicketsFlowRoute({
    required String placeOfArrival,
    required String placeOfDeparture,
    required DateTime date,
    required int countOfPassengers,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          BuyTicketsFlowRoute.name,
          args: BuyTicketsFlowRouteArgs(
            placeOfArrival: placeOfArrival,
            placeOfDeparture: placeOfDeparture,
            date: date,
            countOfPassengers: countOfPassengers,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BuyTicketsFlowRoute';

  static const PageInfo<BuyTicketsFlowRouteArgs> page =
      PageInfo<BuyTicketsFlowRouteArgs>(name);
}

class BuyTicketsFlowRouteArgs {
  const BuyTicketsFlowRouteArgs({
    required this.placeOfArrival,
    required this.placeOfDeparture,
    required this.date,
    required this.countOfPassengers,
    this.key,
  });

  final String placeOfArrival;

  final String placeOfDeparture;

  final DateTime date;

  final int countOfPassengers;

  final Key? key;

  @override
  String toString() {
    return 'BuyTicketsFlowRouteArgs{placeOfArrival: $placeOfArrival, placeOfDeparture: $placeOfDeparture, date: $date, countOfPassengers: $countOfPassengers, key: $key}';
  }
}

/// generated route for
/// [FeedPage]
class FeedPageRoute extends PageRouteInfo<void> {
  const FeedPageRoute({List<PageRouteInfo>? children})
      : super(
          FeedPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FindTicketsFlow]
class FindTicketsFlowRoute extends PageRouteInfo<void> {
  const FindTicketsFlowRoute({List<PageRouteInfo>? children})
      : super(
          FindTicketsFlowRoute.name,
          initialChildren: children,
        );

  static const String name = 'FindTicketsFlowRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HotelsPage]
class HotelsPageRoute extends PageRouteInfo<void> {
  const HotelsPageRoute({List<PageRouteInfo>? children})
      : super(
          HotelsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HotelsPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPageFlow]
class MainPageFlowRoute extends PageRouteInfo<void> {
  const MainPageFlowRoute({List<PageRouteInfo>? children})
      : super(
          MainPageFlowRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainPageFlowRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MockWithBackButtonPage]
class MockWithBackButtonPageRoute extends PageRouteInfo<void> {
  const MockWithBackButtonPageRoute({List<PageRouteInfo>? children})
      : super(
          MockWithBackButtonPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MockWithBackButtonPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfilePageRoute extends PageRouteInfo<void> {
  const ProfilePageRoute({List<PageRouteInfo>? children})
      : super(
          ProfilePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RouteSettingsFlow]
class RouteSettingsFlowRoute extends PageRouteInfo<RouteSettingsFlowRouteArgs> {
  RouteSettingsFlowRoute({
    required String placeOfArrival,
    required String placeOfDeparture,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RouteSettingsFlowRoute.name,
          args: RouteSettingsFlowRouteArgs(
            placeOfArrival: placeOfArrival,
            placeOfDeparture: placeOfDeparture,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RouteSettingsFlowRoute';

  static const PageInfo<RouteSettingsFlowRouteArgs> page =
      PageInfo<RouteSettingsFlowRouteArgs>(name);
}

class RouteSettingsFlowRouteArgs {
  const RouteSettingsFlowRouteArgs({
    required this.placeOfArrival,
    required this.placeOfDeparture,
    this.key,
  });

  final String placeOfArrival;

  final String placeOfDeparture;

  final Key? key;

  @override
  String toString() {
    return 'RouteSettingsFlowRouteArgs{placeOfArrival: $placeOfArrival, placeOfDeparture: $placeOfDeparture, key: $key}';
  }
}

/// generated route for
/// [SubscriptionsPage]
class SubscriptionsPageRoute extends PageRouteInfo<void> {
  const SubscriptionsPageRoute({List<PageRouteInfo>? children})
      : super(
          SubscriptionsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionsPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
