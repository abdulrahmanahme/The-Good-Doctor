import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';

class UserPermissionWidget extends StatefulWidget {
  const UserPermissionWidget({
    super.key,
  });

  @override
  State<UserPermissionWidget> createState() => _UserPermissionWidgetState();
}

class _UserPermissionWidgetState extends State<UserPermissionWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        value: isChecked,
        activeColor: ColorManger.primaryColor,
        side: BorderSide(width: 2.w, color: ColorManger.greyCheckBoxColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
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
