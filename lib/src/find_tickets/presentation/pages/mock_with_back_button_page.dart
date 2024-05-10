import 'package:auto_route/annotations.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:flutter/material.dart';
/// Mock page for the Colored buttons on BottomSheet for choosing 'Arrive' place
@RoutePage()
class MockWithBackButtonPage extends StatelessWidget {
  const MockWithBackButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('MockPage'.hardcoded),
      ),
    );
  }
}
