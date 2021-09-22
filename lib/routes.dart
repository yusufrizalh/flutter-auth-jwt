// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './pages.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/detail': // ada animasi
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => DetailPage(args),
          transitionDuration: Duration(milliseconds: 2000),
          transitionsBuilder: (_, animation, secondAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      default:
        return errorRoute();
    }
  }

  static Route errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Route is Error'),
        ),
        body: Center(
          child: Text('Route not found!'),
        ),
      );
    });
  }
}
