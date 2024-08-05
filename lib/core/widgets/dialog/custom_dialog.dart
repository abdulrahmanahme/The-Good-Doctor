import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/helper/extantion.dart';
import 'package:the_good_doctor/core/theming/colors.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog(
      {super.key,
      this.titleColor,
      this.desColor,
      required this.description,
      required this.title,
      this.widget,
      this.onTap,
      this.isError = false,
      this.isLogout = false});
  final Color? titleColor;
  final Color? desColor;
  final String title;
  final String description;
  final Widget? widget;
  final bool isError;
  final bool isLogout;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 250,
            left: 10,
            right: 10,
            child: Container(
              width: 331.w,
              height: 224.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: .370.sw,
            child: widget ?? Container(),
          ),
          Positioned(
            top: 250,
            // right:.5.sw ,
            right: .03.sw,
            child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.close,
                  size: 27.r,
                )),
          ),
          Positioned(
            top: 310,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: titleColor ?? Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                10.h.verticalSpace,
                SizedBox(
                  width: .8.sw,
                  child: Text(
                    description,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: desColor ?? Color(0xff292E3A),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                12.h.verticalSpace,
                if (onTap != null)
                  IconButton(
                    onPressed: onTap,
                    icon: Container(
                      height: 38.h,
                      width: 144.w,
                      decoration: BoxDecoration(
                        color: ColorManger.primaryColor,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Center(
                        child: Text(
                          'Ok',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    color: ColorManger.primaryColor,
                  ),
                if (isLogout == true)
                  IconButton(
                    onPressed: () {
                      //  NavManager.goto(LoginScreen());
                    },
                    icon: Container(
                      height: 38.h,
                      width: 144.w,
                      decoration: BoxDecoration(
                        color: ColorManger.primaryColor,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    color: ColorManger.primaryColor,
                  ),
                if (isError == true)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Container(
                          height: 41.h,
                          width: 144.w,
                          decoration: BoxDecoration(
                            color: Color(0xffD0DEEB),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Center(
                            child: Text(
                              'Ok',
                              style: TextStyle(
                                color: Color(0xff9BA9B9),
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        color: ColorManger.primaryColor,
                      ),
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
