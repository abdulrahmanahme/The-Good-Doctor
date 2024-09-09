import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/feature/login/widgets/password_vaildation.dart';
import 'package:the_good_doctor/feature/login/widgets/user_premission_widget.dart';
import 'package:the_good_doctor/feature/sign_up/logic/cubit/sign_up_cubit.dart';
import '../../../../../core/helper/app_regex.dart';
import '../../../../../core/widgets/text_from_felid_widget.dart';

class TextFormFieldSignUpWidget extends StatefulWidget {
  const TextFormFieldSignUpWidget({
    super.key,
  });

  @override
  State<TextFormFieldSignUpWidget> createState() =>
      _TextFormFieldSignUpWidgetState();
}

class _TextFormFieldSignUpWidgetState extends State<TextFormFieldSignUpWidget> {
  bool isObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setUpPasswordControllerListener();
  }

  void setUpPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Form(
        key: context.read<SignUpCubit>().formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormFelidWithTitleWidget(
              hint: 'Name',
              controller: context.read<SignUpCubit>().nameController,
              suffixIconColor: Colors.grey,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please Enter Your name';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            16.h.verticalSpace,
            TextFormFelidWithTitleWidget(
              hint: 'Email',
              controller: context.read<SignUpCubit>().emailController,
              suffixIconColor: Colors.grey,
              validator: (value) {
                if (value == null ||
                    value.trim().isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please Enter Your Email';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            16.h.verticalSpace,
            TextFormFelidWithTitleWidget(
              hint: 'Phone',
              controller: context.read<SignUpCubit>().phoneController,
              suffixIconColor: Colors.grey,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please Enter Your phone';
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
            ),
            16.h.verticalSpace,
            TextFormFelidWithTitleWidget(
              hint: 'Gander',
              controller: context.read<SignUpCubit>().genderController,
              suffixIconColor: Colors.grey,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please Enter Your gander';
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
            ),
            16.h.verticalSpace,
            TextFormFelidWithTitleWidget(
              hint: 'Password',
              controller: context.read<SignUpCubit>().passwordController,
              suffixIconColor: Colors.grey,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please Enter Your Password';
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
            ),
            16.h.verticalSpace,
            TextFormFelidWithTitleWidget(
              hint: 'Confirm Password',
              controller: context.read<SignUpCubit>().confirmPassController,
              suffixIconColor: Colors.grey,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please Enter Password';
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
            ),
            const UserPermissionWidget(),
            16.h.verticalSpace,
            PasswordValidations(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    context.read<SignUpCubit>().emailController.dispose();
    context.read<SignUpCubit>().phoneController.dispose();
    context.read<SignUpCubit>().confirmPassController.dispose();
    context.read<SignUpCubit>().nameController.dispose();
    context.read<SignUpCubit>().genderController.dispose();

    super.dispose();
  }
}
