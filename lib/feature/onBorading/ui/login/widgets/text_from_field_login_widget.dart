import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:the_good_doctor/feature/onBorading/ui/login/widgets/password_vaildation.dart';
import 'package:the_good_doctor/feature/onBorading/ui/login/widgets/user_premission_widget.dart';
import '../../../../../core/helper/app_regex.dart';
import '../../../../../core/widgets/text_from_felid_widget.dart';

class TextFormFieldWidget extends StatefulWidget {
  TextFormFieldWidget({
    super.key,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
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
    passwordController = context.read<LoginCubit>().passwordController;
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
        key: context.read<LoginCubit>().formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormFelidWithTitleWidget(
              hint: 'Email',
              controller: context.read<LoginCubit>().emailController,
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
              hint: 'Password',
              controller: context.read<LoginCubit>().passwordController,
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
            const UserPermissionWidget(),
            16.h.verticalSpace,
            PasswordValidations(
                hasLowerCase: hasLowerCase,
                hasUpperCase: hasUpperCase,
                hasSpecialCharacters: hasSpecialCharacters,
                hasNumber: hasNumber,
                hasMinLength: hasMinLength),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
