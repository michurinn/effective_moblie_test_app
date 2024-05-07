import 'package:flutter/material.dart';
import 'package:mad_test_work/core/extensions/string_exttensions.dart';

class ErrorPageView extends StatelessWidget {
  const ErrorPageView({super.key});
  static const routeName = '/error';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrong route'.hardcoded),
      ),
      body: Center(
        child: Text('Wrong route'.hardcoded),
      ),
    );
  }
}
