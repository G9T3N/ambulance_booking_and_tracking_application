import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/Core/color/appcolors.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final Widget prefixWidget;
  final Widget? suffixWidget;

  const AppTextField(
      {super.key,
      required this.hintText,
      required this.prefixWidget,
      this.suffixWidget});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        iconColor: Colors.white,
        suffixIconColor: Colors.white,
        prefixIconColor: Colors.white,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 5.h),
        hintStyle: const TextStyle(color: Colors.white),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 16.0.w, right: 10.w, top: 4.h),
          child: prefixWidget,
        ),
        suffixIcon: suffixWidget,
        filled: true,
        fillColor: AppColor.mainColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
