import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/Core/color/appcolors.dart';
import 'package:test_flutter_in_kali_linux/View/Component/appbar.dart';

class DriverMapScreen extends StatefulWidget {
  const DriverMapScreen({super.key});

  @override
  State<DriverMapScreen> createState() => _DriverMapScreenState();
}

class _DriverMapScreenState extends State<DriverMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Column(
            children: [
              const MYAppbar(),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.red),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      "assets/images/map.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)),
                height: 55.h,
                color: AppColor.mainColor,
                onPressed: () {
                  showCupertinoDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text(
                            "Alert",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          content: const Text(
                            "Do you want to complete the Case ?",
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "close",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Confirm",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ),
                          ],
                        );
                      });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                    Text(
                      "Complete",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
