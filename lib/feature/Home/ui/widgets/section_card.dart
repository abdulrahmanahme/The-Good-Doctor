import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';
import 'package:the_good_doctor/feature/Home/data/model/home_model.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key, required this.doctorModel});
final  DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 97.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        itemCount:  doctorModel.doctorspecialization!.length,
        itemBuilder: (context, int index) => InkWell(
          onTap: () {},
          child: Column(
            children: [
              Container(
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
                  ),
                ),
              ),
              10.h.verticalSpace,
                  Expanded(
                    child: Text(
                      doctorModel.doctorspecialization?[index].name??'N/A',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.font12BlackText400,
                    ),
                  ),
            ],
          ),
        ),
        separatorBuilder: (context, int index) => 24.w.horizontalSpace,
      ),
    );
  }
}
