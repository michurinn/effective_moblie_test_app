import 'package:auto_route/annotations.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:flutter/material.dart';
/// Mock page for the Subscriptions button in the BottomNavBar
@RoutePage()
class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('SubscriptionsPage'.hardcoded),
    );
  }
}
