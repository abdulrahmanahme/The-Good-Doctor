import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_good_doctor/core/helper/path_manger/path_manger.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';
import 'package:the_good_doctor/feature/onBorading/ui/Home/ui/widgets/book_card_widget.dart';
import 'package:the_good_doctor/feature/onBorading/ui/Home/ui/widgets/doctor_card.dart';
import 'package:the_good_doctor/feature/onBorading/ui/Home/ui/widgets/header_widget.dart';
import 'package:the_good_doctor/feature/onBorading/ui/Home/ui/widgets/section_card.dart';
import 'package:the_good_doctor/feature/onBorading/ui/Home/ui/widgets/title_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
       
          children: [
            15.h.verticalSpace,
            HeaderWidget(
              onTap: () {},
              title: 'Abdo',
            ),
            // 10.h.verticalSpace,
            BookCardWidget(
              buttonCardOnPressed: () {},
            ),
            24.h.verticalSpace,
            TitleSection(
              title: 'Doctor Speciality',
              onPressedSeeAll: () {},
            ),
            SizedBox(
              height: 86.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: 4,
                itemBuilder: (context, int index) => const SectionCard(),
                separatorBuilder: (context, int index) => 24.w.horizontalSpace,
              ),
            ),
            10.h.verticalSpace,
            TitleSection(
              title: 'Recommendation Doctor ',
              onPressedSeeAll: () {},
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                padding:EdgeInsets.symmetric(vertical: 12.h) ,
                itemBuilder: (context, int index) =>  DoctorCard(
                    titleDoctor: 'Dr. Randy Wigham ',
                    image:
                        'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    specialization: 'General | RSUD Gatot Subroto',
                    reviews: '(4,279 reviews)',
                    onTap: (){},),
                separatorBuilder: (context, int index) => 14.h.verticalSpace,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
