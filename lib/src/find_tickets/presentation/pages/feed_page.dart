import 'package:auto_route/annotations.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('FeedPage'.hardcoded),
    );
  }
}
