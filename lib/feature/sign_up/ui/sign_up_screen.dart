import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/helper/extantion.dart';
import 'package:the_good_doctor/core/widgets/default_button.dart';
import 'package:the_good_doctor/feature/login/widgets/already_have_an_account_widget.dart';
import 'package:the_good_doctor/feature/sign_up/data/model/sign_up_request_model.dart';
import 'package:the_good_doctor/feature/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:the_good_doctor/feature/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:the_good_doctor/feature/sign_up/ui/widgets/text_from_feild_sign_up_widget.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../core/routing/routing.dart';

class SignUPScreen extends StatelessWidget {
  SignUPScreen({
    super.key,
  });
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            50.h.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 31.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: TextStyles.font24Primary100w700,
                  ),
                  10.h.verticalSpace,
                  Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: TextStyles.font16GreyText400,
                  ),
                ],
              ),
            ),
            36.h.verticalSpace,
            const TextFormFieldSignUpWidget(),
            32.h.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: DefaultButton(
                title: 'Create an Account',
                onPressed: () {
                  if (context
                      .read<SignUpCubit>()
                      .formKey
                      .currentState!
                      .validate()) {
                    context.read<SignUpCubit>().signUp(
                          SignUpRequestModel(
                            name:
                                context.read<SignUpCubit>().nameController.text,
                            email: context
                                .read<SignUpCubit>()
                                .emailController
                                .text,
                            phone: context
                                .read<SignUpCubit>()
                                .phoneController
                                .text,
                            gender: context
                                .read<SignUpCubit>()
                                .genderController
                                .text,

                            ///should enter 0 or 1 for gender
                            password: context
                                .read<SignUpCubit>()
                                .passwordController
                                .text,
                            passwordConfirmation: context
                                .read<SignUpCubit>()
                                .confirmPassController
                                .text,
                          ),
                        );
                  }

                },
              ),
            ),
            const SignUpBlocListener(),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(child: AlreadyHaveAnAccountWidget(
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
          )),
          24.h.verticalSpace,
        ],
      ),
    );
  }
}
