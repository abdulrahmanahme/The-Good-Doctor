import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/feature/onBorading/ui/login/widgets/user_premission_widget.dart';
import '../../../../../core/widgets/text_from_felid_widget.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({super.key, required this.textEditingController});
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormFelidWithTitleWidget(
            hint: 'Email',
            controller: textEditingController,
            suffixIconColor: Colors.grey,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please Enter Your Email';
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
          ),
          16.h.verticalSpace,
          TextFormFelidWithTitleWidget(
            hint: 'Password',
            controller: textEditingController,
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
         const  UserPermissionWidget(),

        ],
      ),
    );
  }
}
