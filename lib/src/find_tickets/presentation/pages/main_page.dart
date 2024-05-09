import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/assets/resources.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/core/router/app_route_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AutoRouter(),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(SvgIcons.airplaneIcon),
              label: 'Авиабилеты'.hardcoded),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgIcons.hotelBedIcon),
            label: 'Отели'.hardcoded,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgIcons.mapPointIcon),
            label: 'Короче'.hardcoded,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgIcons.ringIcon),
            label: 'Подписки'.hardcoded,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgIcons.profileIcon),
            label: 'Профиль'.hardcoded,
          ),
        ],
        onTap: (value) {
          switch (value) {
            case 0:
              context.router.replaceNamed(AppRoutePaths.ticketInitialPath);

            case 1:
              context.router.replaceNamed(AppRoutePaths.hotelsPath);
            case 2:
              context.router.replaceNamed(AppRoutePaths.feedPath);

            case 3:
              context.router.replaceNamed(AppRoutePaths.subscriptionsPath);

            case 4:
              context.router.replaceNamed(AppRoutePaths.profilePath);

            default:
              context.router.replaceNamed(AppRoutePaths.ticketInitialPath);
          }
        },
      ),
    );
  }
}
