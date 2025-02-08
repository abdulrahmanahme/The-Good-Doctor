import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';
import 'package:the_good_doctor/core/widgets/dialog/dialog_handler.dart';
import 'package:the_good_doctor/feature/Home/logic/cubit/home_cubit.dart';
import 'package:the_good_doctor/feature/Home/logic/cubit/home_state.dart';

class DoctorSpecialtyListView extends StatefulWidget {
  const DoctorSpecialtyListView({super.key});

  @override
  State<DoctorSpecialtyListView> createState() =>
      _DoctorSpecialtyListViewState();
}

class _DoctorSpecialtyListViewState extends State<DoctorSpecialtyListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is HomeLoadingState ||
          current is HomeSuccessState ||
          current is HomeErrorState,
      builder: (context, state) {
        return state.maybeWhen(
          homeLoadingState: () {
            return const Center(
              child: CircularProgressIndicator(
                color: ColorManger.primaryColor,
              ),
            );
          },
          homeSuccessState: (homeSuccessState) {
            return SizedBox(
              height: 97.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: homeSuccessState!.length,
                itemBuilder: (context, int index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });

                    context.read<HomeCubit>().getDoctorsFilteredList(
                          selectedSpecializeId: homeSuccessState[index].id!,
                        );
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 65.h,
                        width: 65.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorManger.primarySurface,
                          border: selectedIndex == index
                              ? Border.all(
                                  color: ColorManger.primaryColor,
                                  width: 2,
                                )
                              : null,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.network(
                            'https://static.wikia.nocookie.net/naruto/images/d/d6/Naruto_Part_I.png/revision/latest?cb=20210223094656',
                          ),
                        ),
                      ),
                      10.verticalSpace,
                      Expanded(
                        child: Text(
                          homeSuccessState[index].name ?? 'N/A',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.font12BlackText400,
                        ),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, int index) => 16.w.horizontalSpace,
              ),
            );
          },
          homeErrorState: (homeErrorState) {
            return DialogHandler.errorDialog(
              context: context,
              description: homeErrorState.message,
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
