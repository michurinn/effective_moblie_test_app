import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AutoRouter(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_sharp), label: '1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.safety_check_rounded), label: '1'),
          BottomNavigationBarItem(icon: Icon(Icons.vaccines), label: '1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.h_mobiledata_outlined), label: '1'),
          BottomNavigationBarItem(icon: Icon(Icons.yard), label: '1'),
        ],
        onTap: (value) {
          switch (value) {
            case 0:
              context.router.replaceNamed('tickets');

            case 1:
              context.router.replaceNamed('hotels');
            case 2:
              context.router.replaceNamed('feed');

            case 3:
              context.router.replaceNamed('subscriptions');

            case 4:
              context.router.replaceNamed('profile');

            default:
              context.router.replaceNamed('tickets');
          }
        },
      ),
    );
  }
}
