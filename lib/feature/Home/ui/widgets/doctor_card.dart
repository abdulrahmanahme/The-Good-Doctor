import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';

class DoctorCard extends StatelessWidget {
  final String titleDoctor;
  final String image;
  final String specialization;
  final String reviews;
 final void Function()? onTap;

  const DoctorCard(
      {super.key,
      required this.titleDoctor,
      required this.image,
      required this.specialization,
      required this.reviews,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 110.h,
            width: 110.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  image,
                ),
              ),
            ),
          ),
          16.w.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: .55.sw,
                child: Text(
                  titleDoctor,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font16Black100Text700,
                ),
              ),
              8.w.verticalSpace,
              SizedBox(
                width: .55.sw,
                child: Text(
                  specialization,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font15greyText400,
                ),
              ),
              12.w.verticalSpace,
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: ColorManger.waring,
                    size: 20,
                  ),
                  2.w.horizontalSpace,
                  Text(
                    reviews,
                    style: TextStyles.font12greyText400,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
