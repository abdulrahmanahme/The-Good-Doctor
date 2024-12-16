import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_good_doctor/core/helper/path_manger/path_manger.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.onTap,
    required this.title,
  });
  final void Function()? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, $title!',
              style: TextStyles.font18BlackTextW700,
            ),
            8.h.verticalSpace,
            Text(
              'How Are you Today?',
              style: TextStyles.font12Black80W400,
            ),
          ],
        ),
        Spacer(),
        InkWell(
          onTap: onTap,
          child: Container(
            height: 48.h,
            width: 48.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManger.white20,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Badge(
                backgroundColor: Colors.red,
                child: SvgPicture.asset(
                  PathManger.svgPath + 'bell.svg',
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
