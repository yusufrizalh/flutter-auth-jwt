// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Animasi Flutter',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
