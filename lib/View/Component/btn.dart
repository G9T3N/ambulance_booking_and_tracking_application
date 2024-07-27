import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String btnText;
  final TextStyle textStyle;
  final void Function() onPressed;
  const AppButton(
      {super.key,
      required this.btnText,
      required this.textStyle,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      minWidth: double.infinity,
      elevation: 0,
      height: 50.h,
      color: Colors.deepOrange,
      onPressed: onPressed,
      child: Text(
        btnText,
        style: textStyle,
      ),
    );
  }
}
