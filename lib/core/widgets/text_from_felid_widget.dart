import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';

class TextFormFelidWithTitleWidget extends StatelessWidget {
  TextFormFelidWithTitleWidget(
      {Key? key,
      this.showBorder = true,
      this.title,
      this.controller,
      this.keyboardType,
      this.textInputAction,
      this.focusNode,
      this.textCapitalization,
      this.autofocus,
      this.obscureText,
      this.suffix,
      this.prefix,
      this.enabled,
      this.hint,
      this.onChange,
      this.validator,
      this.filled,
      this.fillColor,
      this.textColor,
      this.onFieldSubmitted,
      this.errorWidget,
      this.inputFormatters,
      this.prefixIconSize,
      this.suffixIconSize,
      this.maxLines = 1,
      this.enabledBorderColor,
      this.colorHintStyle,
      this.prefixIconColor,
      this.suffixIconColor,
      this.hintStyle,
      this.maxDigit,
      this.borderRadius,
      this.style,
      this.textAlign,
      this.titleFontWeight,
      this.verticalSpaceWidget,
      this.containerWidget,
      this.borderWidth,
      this.contentPadding,
      this.colorBorder})
      : super(key: key);
  final String? title;
  final TextEditingController? controller;
  final double? prefixIconSize;
  final double? suffixIconSize;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final TextCapitalization? textCapitalization;
  final onChange;
  final bool? autofocus;
  final bool? obscureText;
  final Widget? suffix;
  final Widget? prefix;
  final int? maxDigit;
  final bool? enabled;
  final String? hint;
  final String? Function(String?)? validator;
  final bool? filled;
  final Color? fillColor;
  final Color? textColor;
  final Color? enabledBorderColor;
  final void Function(String)? onFieldSubmitted;
  final Widget? errorWidget;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final bool showBorder;
  final Color? colorHintStyle;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final TextStyle? hintStyle;
  final double? borderRadius;
  final TextStyle? style;
  final FontWeight? titleFontWeight;
  final double? verticalSpaceWidget;
  final Widget? containerWidget;
  final double? borderWidth;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign? textAlign;
  final Color? colorBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        maxLines: maxLines,
        controller: controller,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        autofocus: autofocus ?? false,
        enabled: enabled ?? true,
        onFieldSubmitted: onFieldSubmitted,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        focusNode: focusNode,
        validator: validator,
        onChanged: onChange,
        maxLength: maxDigit,
        inputFormatters: inputFormatters,
        style: TextStyle(color: textColor),
        textAlign: textAlign ?? TextAlign.start,
        decoration: InputDecoration(
          isDense: true,
          counterText: "",
          // contentPadding: EdgeInsets.symmetric(
          //   vertical: 15.h,
          //   horizontal: 15.w,
          // ),
          prefixIconConstraints: prefixIconSize == null
              ? null
              : BoxConstraints(
                  maxHeight: prefixIconSize!,
                  maxWidth: prefixIconSize!,
                ),
          suffixIconConstraints: suffixIconSize == null
              ? null
              : BoxConstraints(
                  maxHeight: suffixIconSize!,
                  maxWidth: suffixIconSize!,
                ),
          filled: filled ?? true,
          fillColor: ColorManger.backgroundFromColor,
          prefixIconColor: prefixIconColor,
          suffixIconColor: suffixIconColor,
          prefixIcon: prefix,
          suffixIcon: suffix,
          hintText: ' $hint',
          hintStyle: hintStyle ??
              TextStyles.font14HintTextFelid500,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
            borderSide: BorderSide(
                color: colorBorder ?? ColorManger.enableBorderColor,
                width: borderWidth ?? 1.r),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
            borderSide: BorderSide(
              color: Colors.red,
              width: borderWidth ?? 1.r,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 16.r,
            ),
            borderSide: BorderSide(
              color: ColorManger.primaryColor,
              width: borderWidth ?? 1.r,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
            borderSide: BorderSide(
                color: ColorManger.primaryColor, width: borderWidth ?? 1.r),
          ),
        ),
      ),
    );
  }
}
