import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


// 
class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subTitle,
    required this.title,
  });
  final String image, backgroundImage;
  final String subTitle;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.fill,),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(
                  image,),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: const Text ('تخط'),
                  )),
            
                      
            ],
          ),
          

        
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), 
          child: Text(subTitle,
            textAlign: TextAlign.center,
          ),
        ),
      
      ],
    );
  }
}
