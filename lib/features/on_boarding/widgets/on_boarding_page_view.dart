import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/images_app.dart';
import 'package:fruit_hub/features/on_boarding/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      

      children:  [
        // page 1
          PageViewItem(
            image: Assets.imagesPageViewItem1Image ,
             backgroundImage:Assets.imagesPageViewItem1BackgroundImage ,
             title:Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text('مرحبًا بك في'),
                Text('Fruit'),
                Text('HUB'),

               ],
             ),
             subTitle: 'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
             
          ),
              // page 2
            PageViewItem(
            image: Assets.imagesPageViewItem2Image ,
             backgroundImage:Assets.imagesPageViewItem2BackgroundImage ,
             title:Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text('ابحث وتسوق',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF0C0D0D),
                  fontSize: 23,
                  fontFamily: 'cairo',
                  fontWeight: FontWeight.w700,
                  height: 0,

                ),
                
                ),
                
               ],
             ),
             subTitle: 'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
             
          ),


        
      ],
    );
  }
}