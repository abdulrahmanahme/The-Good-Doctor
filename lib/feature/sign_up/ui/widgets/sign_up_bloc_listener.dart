import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_good_doctor/core/helper/extantion.dart';
import 'package:the_good_doctor/core/networking/api_error_handler.dart';
import 'package:the_good_doctor/core/routing/routing.dart';
import 'package:the_good_doctor/core/theming/colors.dart';
import 'package:the_good_doctor/core/widgets/dialog/dialog_handler.dart';
import 'package:the_good_doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:the_good_doctor/feature/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:the_good_doctor/feature/sign_up/logic/cubit/sign_up_state.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is LoadingSignUp ||
          current is SuccessSignUp ||
          current is ErrorSignUp,
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
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            context.pop();
            log('wwwwwwwwwww ${error.error}');

            DialogHandler.errorDialog(
                context: context, description: error.error.getError());
          },
        );
      },
      child: const SizedBox.square(),
    );
  }
}

