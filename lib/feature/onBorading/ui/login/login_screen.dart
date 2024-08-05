import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/helper/extantion.dart';
import 'package:the_good_doctor/core/widgets/default_button.dart';
import 'package:the_good_doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:the_good_doctor/feature/onBorading/ui/login/widgets/already_have_an_account_widget.dart';
import 'package:the_good_doctor/feature/onBorading/ui/login/widgets/login_bloc_listener.dart';
import 'package:the_good_doctor/feature/onBorading/ui/login/widgets/text_from_field_login_widget.dart';

import '../../../../core/routing/routing.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/widgets/text_from_felid_widget.dart';
import '../../../login/data/model/login_request_body.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
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
                    'Welcome Back',
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
            TextFormFieldWidget(),
            32.h.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: DefaultButton(
                title: 'Login',
                onPressed: () {
                  validatedAndLogin(
                    context,
                  );
                  // context.pushNamed(Routes.loginScreen);
                },
              ),
            ),
            const LoginBlocListener(),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Center(child: AlreadyHaveAnAccountWidget()),
          24.h.verticalSpace,
        ],
      ),
    );
  }
}

void validatedAndLogin(
  BuildContext context,
) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginState(
          LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ),
        );
  }
}
