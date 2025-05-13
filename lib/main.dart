import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_hub/core/hleper_functions/on_generate_route.dart';
import 'package:fruit_hub/features/splash/presentation/splash_view.dart';
import 'package:fruit_hub/generated/l10n.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      fontFamily: 'cairo',
      ),
      localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: const Locale('ar', ''),
    onGenerateRoute: onGenerateRoute,
    initialRoute: SplashView.routeName,
    debugShowCheckedModeBanner: false,
    );
  }
}

