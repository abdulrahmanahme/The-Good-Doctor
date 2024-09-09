import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_good_doctor/core/helper/extantion.dart';
import 'package:the_good_doctor/core/routing/routing.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/widgets/dialog/dialog_handler.dart';
import 'package:the_good_doctor/feature/login/logic/cubit/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.mapOrNull(
          loading: (loadingState) {
            return showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManger.primaryColor,
                ),
              ),
            );
          },
          success: (successState) {
            context.pop();
            context.pushNamed(Routes.homeScreen, arguments: successState.data.userData?.userName );
          },
          error: (error) {
            context.pop();
            DialogHandler.errorDialog(
                context: context, description: error.toString());
          },
        );
      },
      child: const SizedBox.square(),
    );
  }
}
