import 'package:auto_route/annotations.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:flutter/material.dart';
/// Mock page for the Hotels button in the BottomNavBar
@RoutePage()
class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('HotelsPage'.hardcoded),
    );
  }
}
