import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:fruit_hub/features/splash/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String routeName = 'splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SplashViewBody()));
  }

  void excuteNavigation() 
  {
    
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen) ; 
    Future.delayed(const Duration(seconds: 1), () {
      // ignore: use_build_context_synchronously
      if (isOnBoardingViewSeen) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context , LoginView.routeName);
}else {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    }
    });
  }
}
