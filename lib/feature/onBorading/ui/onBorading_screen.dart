import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_good_doctor/core/helper/extantion.dart';
import 'package:the_good_doctor/feature/onBorading/ui/widgets/background_image_and_text.dart';
import '../../../core/helper/path_manger/path_manger.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theming/text_styles.dart';
import '../../../core/widgets/default_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 31,
            ),
            Center(
              child: SvgPicture.asset(PathManger.svgPath + 'logoApp.svg'),
            ),
            const SizedBox(
              height: 50,
            ),
            const BackgroundImageAndText(),
            // 5.h.verticalSpace,
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 20, top: 0, left: 20),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments',
                      style: TextStyles.font12GreyColor400,
                    ),
                    // 5.h.verticalSpace,
                    Text(
                      ' easily with Docdoc to get a new experience.',
                      style: TextStyles.font12GreyColor400,
                    ),
                  ],
                ),
              ),
            ),
            32.h.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: DefaultButton(
                title: 'Get Started',
                onPressed: () {
                  context.pushNamed(Routes.loginScreen);
                },
              ),
            ),

            32.h.verticalSpace,
          ],
        ),
      ),
    ));
  }
}

