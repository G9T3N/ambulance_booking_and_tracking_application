import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MYAppbar extends StatelessWidget {
  final String? title;
  const MYAppbar({super.key, this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          title ?? "BOOK AN \nAMBULACNNCE",
          style: Theme.of(context).textTheme.bodyLarge,
        )),
        Image.asset(
          "assets/images/ambCar.jpg",
          width: 112.w,
        )
      ],
    );
  }
}
