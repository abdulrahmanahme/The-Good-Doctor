import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/text_styles.dart';

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  AlreadyHaveAnAccountWidget(
      {super.key, this.isSignIn = false, this.onPressed});
  bool isSignIn;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.symmetric(horizontal: 80.w),
        alignment: Alignment.center,
      ),
      child: Row(
        children: [
          Text(
            isSignIn
                ? 'You did have an account yet?'
                : 'Already have an account yet?',
            style: TextStyles.font11BlackText100W400,
          ),
          Text(
            isSignIn ? ' Sign Up' : ' Sign IN',
            style: TextStyles.font11Primary100w400,
          ),
        ],
      ),
    );
  }
}
