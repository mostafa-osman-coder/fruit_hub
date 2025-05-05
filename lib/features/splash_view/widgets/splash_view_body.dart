import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/images_app.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SvgPicture.asset(Assets.imagesPlant),
         SvgPicture.asset(Assets.imagesLogo),
         SvgPicture.asset(Assets.imagesSplashBottom),

      ],
    );
  }
}