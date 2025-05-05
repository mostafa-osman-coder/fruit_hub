import 'package:flutter/material.dart';
import 'package:fruit_hub/core/hleper_functions/on_generate_route.dart';
import 'package:fruit_hub/features/splash_view/presentation/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    onGenerateRoute: onGenerateRoute,
    initialRoute: SplashView.routeName,
    debugShowCheckedModeBanner: false,
    );
  }
}

