import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/text_styles.dart';

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.symmetric(horizontal: 80.w),
        alignment: Alignment.center,
        
      ),
      child: Row(
        children: [
          Text(
            'Already have an account yet?',
            style: TextStyles.font11BlackText100W400,
          ),
          Text(
            ' Sign Up',
            style: TextStyles.font11Primary100w400,
          ),
        ],
      ),
    );
  }
}
