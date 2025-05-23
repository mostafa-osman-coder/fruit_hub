import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/images_app.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[SvgPicture.asset(Assets.imagesPlant),], ),
         SvgPicture.asset(Assets.imagesLogo),
         SvgPicture.asset(Assets.imagesSplashBottom,
         fit: BoxFit.fill,),

      ],
    );
  }
}