import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.title,
    required this.onPressedSeeAll,
  });
  final String title;
  final void Function()? onPressedSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.font18Black100TextW600,
        ),
       const Spacer(),
        TextButton(
          onPressed: onPressedSeeAll,
          child: Text(
            'See All',
            style: TextStyles.font12Primary100W400,
          ),
        )
      ],
    );
  }
}
