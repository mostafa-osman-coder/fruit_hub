import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';

//
class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subTitle,
    required this.title, required this.isVisible,
  });
  final String image, backgroundImage;
  final String subTitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Positioned(
                child: Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        Prefs.setBool(kIsOnBoardingViewSeen, true);
                        Navigator.of(context).pushReplacementNamed(LoginView.routeName);
                      },
                      child: Text('تخط',style: TextStyles.regular13.copyWith(color: Color(0xFF949D9E)),)),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Text(
            subTitle,
             textAlign: TextAlign.center,
             style: TextStyles.semiBold13.copyWith(color: Color(0xFF4E5456)),),
        ),
      ],
    );
  }
}
