import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/View/Component/appbar.dart';
import 'package:test_flutter_in_kali_linux/View/Component/btn.dart';
import 'package:test_flutter_in_kali_linux/View/Component/record_card.dart';

class RecordRequest extends StatelessWidget {
  const RecordRequest({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppButton(
          btnText: "Go Back",
          textStyle: Theme.of(context).textTheme.bodyMedium!,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              children: [
                const MYAppbar(),
                SizedBox(height: 15.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "PENDING",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const RecordCard(
                  name: "Haroon Masih",
                  phone: "+92 313 1907600",
                  address: "Hoti Marden",
                  type: "Medical  ",
                  date: "2023/11/2 -19:00",
                  emergencyStatus: "PENDING",
                  cardColor: Colors.yellow,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: Colors.grey[500],
                  thickness: 6,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "COMPELTED",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const RecordCard(
                  name: "Haroon Masih",
                  phone: "+92 313 1907600",
                  address: "Hoti Marden",
                  type: "Medical  ",
                  date: "2023/11/2 -19:00",
                  emergencyStatus: "COMPLETED",
                  cardColor: Colors.green,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: Colors.grey[500],
                  thickness: 6,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "CANCELED",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const RecordCard(
                  name: "Haroon Masih",
                  phone: "+92 313 1907600",
                  address: "Hoti Marden",
                  type: "Medical  ",
                  date: "2023/11/2 -19:00",
                  emergencyStatus: "CANCELED",
                  cardColor: Colors.red,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: Colors.grey[500],
                  thickness: 6,
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
