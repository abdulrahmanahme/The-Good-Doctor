import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/theming/colors.dart';

class TextStyles {
  static final TextStyle font11BlackText100W400 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: ColorManger.black100Color,
  );
   static final TextStyle font11Primary100w400 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    color: ColorManger.primary100Color,
  );

  
  
  static final TextStyle font12PrimaryWithOpacity400 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorManger.primaryColor.withOpacity(.1),
  );

  static final TextStyle font12GreyText400 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: ColorManger.greyTextColor,
      );
  static final TextStyle font12Primary100W400 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: ColorManger.primary100Color,
      );

  static final TextStyle font24Primary100w700 = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: ColorManger.primary100Color);

  static final TextStyle font12GreyColor400 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorManger.greyColor,
  );

  static final TextStyle font32PrimaryColor700 = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: ColorManger.primaryColor);

  static final TextStyle font16GreyText400 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorManger.greyColor);

  static final TextStyle font14HintTextFelid500 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    height: 2,
    color: ColorManger.hintTextFormFelidColor,
  );
}
