import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/book_card_widget.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/doctor_specialty_list_view.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/header_widget.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/doctor_list_view.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/title_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.userName});
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            15.h.verticalSpace,
            HeaderWidget(
              onTap: () {},
              title: userName ?? '',
            ),
            // 10.h.verticalSpace,
            BookCardWidget(
              buttonCardOnPressed: () {},
            ),
            24.h.verticalSpace,
            TitleSection(
              title: 'Doctor Specialty',
              onPressedSeeAll: () {},
            ),

            const DoctorSpecialtyListView(),
            const DoctorListView(),
          ],
        ),
      )),
    );
  }
}
