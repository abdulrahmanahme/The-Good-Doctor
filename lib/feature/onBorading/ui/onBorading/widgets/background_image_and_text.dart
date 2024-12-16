import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_good_doctor/core/helper/path_manger/path_manger.dart';
import '../../../../../core/theming/text_styles.dart';

class BackgroundImageAndText extends StatelessWidget {
  const BackgroundImageAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(PathManger.svgPath + 'backgroundOnBorad.svg'),
        Container(
          height: 491.h,
          width: 1.sw,
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.0),
                Colors.white,
              ],
              stops: const [0.7, 0.86],
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            fit: StackFit.passthrough,
            children: [
              Image.asset( PathManger.imagePath + 'person.png'),

              // SvgPicture.asset(PathManger.imagePath + 'person.png')
            ],
          ),
        ),
        Padding(
          padding:const EdgeInsets.only(top: 365, right: 30, left: 30),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Best Doctor',
                  style: TextStyles.font32PrimaryColor700,
                ),
                Text(
                  'Appointment App',
                  style: TextStyles.font32PrimaryColor700,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
