import 'package:flutter/material.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({Key? key}) : super(key: key);
  static const String routeName = 'router';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('CounterProviderPage'),
      ),
    );
  }
}
