import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/features/on_boarding/widgets/on_boarding_page_view.dart';
 // Ensure this is the correct package or file for DotsIndicator

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
      
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: const Color(0xFF0C0D0D),
            
            
          ),
          
          ),

      ],
    );
  }
}