import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/widgets/dialog/custom_dialog.dart';

class DialogHandler {
  static errorDialog({String? description, required BuildContext context}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustomDialog(
            titleColor: Color(0xffFB4B4B),
            isError: true,
            widget: Container(
              // width: 100.r,
              // height: 100.r,
              decoration: ShapeDecoration(
                color: Color(0xffFB4B4B),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 3.w, color: Color(0xFFF6BDBD)),
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 70.r,
              ),
            ),
            title: 'Error',
            desColor: Color(0xff696969),
            description: description ?? 'Not Approved To System',
          );
        });
  }
}
