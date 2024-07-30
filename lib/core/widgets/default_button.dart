import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/theming/colors.dart';

class DefaultButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double? width;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final Color? borderColor;
  final Color? buttonColor;
  final double? border;
  const DefaultButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.width,
      this.fontSize,
      this.height,
      this.borderColor,
      this.textColor,
      this.buttonColor,
      this.border,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorManger.primaryColor),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(
            Size(double.infinity, 52.h),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          )),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ColorManger.whiteColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
