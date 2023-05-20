import 'package:bases_web/pages/index.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterPage(), settings);
      case '/provider':
        return _fadeRoute(const CounterProviderPage(), settings);
      default:
        return _fadeRoute(const Page404(), settings);
    }
  }

  static PageRoute _fadeRoute(Widget child, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => child,
      transitionsBuilder: (_, animation, __, ___) => FadeTransition(opacity: animation, child: child),
    );
  }
}
