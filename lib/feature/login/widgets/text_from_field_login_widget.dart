import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:the_good_doctor/feature/login/widgets/user_premission_widget.dart';
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
  late TextEditingController passwordController;
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
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
            UserPermissionWidget(
              isChecked: context.read<LoginCubit>().isEmailAndPasswordCashed,
            ),
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
