import 'package:flutter/material.dart';
import 'package:fruit_hub/features/splash_screen/presentation/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold(),);
      
      
  }
}