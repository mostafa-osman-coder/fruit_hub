import 'package:flutter/material.dart';
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
    Future.delayed(const Duration(seconds: 1), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context , OnBoardingView.routeName);
    });
  }
}
