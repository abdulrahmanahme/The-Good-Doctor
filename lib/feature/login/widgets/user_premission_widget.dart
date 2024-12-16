import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';

class UserPermissionWidget extends StatefulWidget {
  UserPermissionWidget({super.key, required this.isChecked});
  bool isChecked;

  @override
  State<UserPermissionWidget> createState() => _UserPermissionWidgetState();
}

class _UserPermissionWidgetState extends State<UserPermissionWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        value: widget.isChecked,
        activeColor: ColorManger.primaryColor,
        side: BorderSide(width: 2.w, color: ColorManger.greyCheckBoxColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        onChanged: (bool? value) {
          setState(() {
            widget.isChecked = value!;
          });
          // pro.setIsChecked(value!);
        },
      ),
      Text('Remember me', style: TextStyles.font12GreyText400),
      const Spacer(),
      TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          visualDensity: VisualDensity.compact,
          padding: EdgeInsets.all(10.r),
        ),
        child: Text(
          'Forgot Password?',
          style: TextStyles.font12Primary100W400,
        ),
      ),
    ]);
  }
}
