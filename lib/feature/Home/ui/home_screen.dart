import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/app_const/app_const.dart';
import 'package:the_good_doctor/core/shared_pref/shared_pref.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/feature/Home/logic/cubit/home_cubit.dart';
import 'package:the_good_doctor/feature/Home/logic/cubit/home_state.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/book_card_widget.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/doctor_card.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/header_widget.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/section_card.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/title_section.dart';

import '../../../core/widgets/dialog/dialog_handler.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key ,this.userName});
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
                  title: '${userName??'N/A'}',
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
                BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) =>
                      current is HomeLoadingState ||
                      current is HomeSuccessState ||
                      current is HomeErrorState,
                  builder: (context, state) {
                    return state.maybeWhen(homeLoadingState: () {
    debugPrint('ddddddddddddd ${SharedPref.getSecureString(AppConst.token)}');
          
                      return const Center(
                        child: CircularProgressIndicator(
                          color: ColorManger.primaryColor,
                        ),
                      );
                    }, homeSuccessState: (homeSuccessState) {
                      log(' fffff $homeSuccessState');
                      
                      return Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SectionCard(
                              doctorModel: homeSuccessState,
                            ),
                            10.h.verticalSpace,
                            TitleSection(
                              title: 'Recommendation Doctor ',
                              onPressedSeeAll: () {},
                            ),
                            Expanded(
                              child: ListView.separated(
                                itemCount: homeSuccessState
                                    .doctorspecialization![1].doctors!.length,
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                itemBuilder: (context, int index) => DoctorCard(
                                  titleDoctor: homeSuccessState
                                          .doctorspecialization?[index]
                                          .doctors?[index]
                                          .name ??
                                      'N/A',
                                  image:
                                      'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                  specialization:
                                      '${homeSuccessState.doctorspecialization?[index].doctors?[index].degree ?? 'N/A'} | ${homeSuccessState.doctorspecialization?[index].doctors?[index].description ?? 'N/A'}',
                                  reviews: '(4,279 reviews)',
                                  onTap: () {},
                                ),
                                separatorBuilder: (context, int index) =>
                                    14.h.verticalSpace,
                              ),
                            ),
                          ],
                        ),
                      );
                    }, homeErrorState: (homeErrorState) {
                      log(' sssss $homeErrorState');
          
                      return DialogHandler.errorDialog(
                          context: context, description: homeErrorState.message);
                    }, orElse: () {
                      return const SizedBox.square();
                    });
                  },
                ),
              ],
            ),
          )),
    );
  }
}
