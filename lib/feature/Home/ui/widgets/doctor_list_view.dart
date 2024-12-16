import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/feature/Home/logic/cubit/home_cubit.dart';
import 'package:the_good_doctor/feature/Home/logic/cubit/home_state.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/doctor_card.dart';
import 'package:the_good_doctor/feature/Home/ui/widgets/title_section.dart';
import '../../../../core/widgets/dialog/dialog_handler.dart';

class DoctorListView extends StatefulWidget {
  const DoctorListView({
    super.key,
  });

  @override
  State<DoctorListView> createState() => _DoctorListViewState();
}

class _DoctorListViewState extends State<DoctorListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorSocializeSuccess || current is DoctorSocializeError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorSocializeSuccess: (doctorSocializeSuccess) {
            return Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  10.h.verticalSpace,
                  TitleSection(
                    title: 'Recommendation Doctor ',
                    onPressedSeeAll: () {},
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: doctorSocializeSuccess!.length,
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      itemBuilder: (context, int index) => DoctorCard(
                        titleDoctor:
                            doctorSocializeSuccess[index].name ?? 'N/A',
                        image:
                            'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        specialization:
                            '${doctorSocializeSuccess[index].address ?? 'N/A'} | ${doctorSocializeSuccess[index].description ?? 'N/A'}',
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
          },
          doctorSocializeError: (doctorSocializeError) {
            return DialogHandler.errorDialog(
              context: context,
              description: doctorSocializeError,
            );
          },
          orElse: () {
            return const SizedBox.square();
          },
        );
      },
    );
  }
}
