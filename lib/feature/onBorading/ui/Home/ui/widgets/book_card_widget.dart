import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/helper/path_manger/path_manger.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';

import '../../../../../../core/widgets/default_button.dart';

class BookCardWidget extends StatelessWidget {
  const BookCardWidget({super.key, required this.buttonCardOnPressed});
  final void Function()? buttonCardOnPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 167.h,
            width: double.infinity,
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  PathManger.imagePath + 'Background.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                8.h.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Book and',
                        style: TextStyles.font18WhiteW500,
                      ),
                      10.h.verticalSpace,
                      Text(
                        'Schedule with',
                        style: TextStyles.font18WhiteW500,
                      ),
                      10.h.verticalSpace,
                      Text(
                        'nearest doctor',
                        style: TextStyles.font18WhiteW500,
                      ),
                      15.h.verticalSpace,
                      DefaultButton(
                        title: 'Find Nearby',
                        buttonColor: ColorManger.whiteColor,
                        backgroundColor:
                            MaterialStateProperty.all(ColorManger.whiteColor),
                        buttonWidth: 109.w,
                        buttonHeight: 39.h,
                        onPressed: buttonCardOnPressed,
                        styleTextButton: TextStyles.font12Primary100W400,
                      ),
                    ],
                  ),
                ),
                // 10.h.verticalSpace,
              ],
            ),
          ),
          Positioned(
            right: 15.w,
            top: 0,
            bottom: 0,
            child: Image.asset(
              PathManger.imagePath + 'woman.png',
              height: 180.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
