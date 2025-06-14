import 'package:flutter/material.dart';
import 'package:ghardoctor/views/splash/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'route_name.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.splashScreenPath:
        return _pageTransition(child: const SplashScreen());

      default:
        return _pageTransition(
          child: Scaffold(
            appBar: AppBar(title: const Text("ERROR")),
            body: const Center(child: Text("ERROR")),
          ),
        );
    }
  }

  static PageTransition<dynamic> _pageTransition({
    required Widget child,
    PageTransitionType? type,
  }) {
    return PageTransition(
      duration: const Duration(milliseconds: 350),
      reverseDuration: const Duration(milliseconds: 350),
      type: type ?? PageTransitionType.rightToLeft,
      child: child,
    );
  }
}
