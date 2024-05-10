import 'package:auto_route/annotations.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:flutter/material.dart';
/// Mock page for the Profile button in the BottomNavBar
@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('ProfilePage'.hardcoded),
    );
  }
}
