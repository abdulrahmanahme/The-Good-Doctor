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
 final MaterialStateProperty<Color?>? backgroundColor;
  final double? buttonHeight;
    final double? buttonWidth;
    final TextStyle? styleTextButton;


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
      this.fontWeight,
      this.backgroundColor,
      this.buttonHeight,this.buttonWidth,this.styleTextButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: backgroundColor?? MaterialStateProperty.all(ColorManger.primaryColor),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(
            Size(buttonWidth??double.infinity,buttonHeight ??52.h),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          )),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: styleTextButton??TextStyle(
          color:  ColorManger.whiteColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
