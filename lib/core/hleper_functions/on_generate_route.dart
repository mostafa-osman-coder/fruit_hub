import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
       case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );
      case LoginView.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold(),);
      
      
  }
}