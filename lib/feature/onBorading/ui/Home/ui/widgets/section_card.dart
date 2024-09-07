
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/theming/colors.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 65.h,
        width: 65.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorManger.primarySurface,
        ),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
              'https://static.wikia.nocookie.net/naruto/images/d/d6/Naruto_Part_I.png/revision/latest?cb=20210223094656',
            )),
      ),
    );
  }
}
