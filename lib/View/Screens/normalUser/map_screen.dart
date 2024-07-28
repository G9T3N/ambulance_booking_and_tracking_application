
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/Core/Function/opencamera.dart';
import 'package:test_flutter_in_kali_linux/Core/color/appcolors.dart';
import 'package:test_flutter_in_kali_linux/View/Component/appbar.dart';
import 'package:test_flutter_in_kali_linux/View/Component/switchgridtile.dart';

class UserMapScreen extends StatefulWidget {
  const UserMapScreen({super.key});

  @override
  State<UserMapScreen> createState() => _UserMapScreenState();
}

class _UserMapScreenState extends State<UserMapScreen> {
  bool switchMajorvalue = false;
  bool switchMinorvalue = false;
  bool takePhoto = false;
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
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SwitchGridTile(
                    switchTitle: "Major",
                    value: switchMajorvalue,
                    onChange: (val) {
                      switchMajorvalue = val;
                      setState(() {});
                    },
                  ),
                  SwitchGridTile(
                    switchTitle: "Minor",
                    value: switchMinorvalue,
                    onChange: (val) {
                      switchMinorvalue = val;
                      setState(() {});
                    },
                  ),
                ],
              ),
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
                height: 25.h,
              ),
              Row(
                children: [
                  Expanded(
                    //!button that saved location and send it to the admin user
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r)),
                      height: 55.h,
                      color: AppColor.mainColor,
                      onPressed: takePhoto == false
                          ? () {}
                          : () {
                              showCupertinoDialog(
                                  context: context,
                                  builder: (context) {
                                    return CupertinoAlertDialog(
                                      title: Text(
                                        "Alert",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                      content: const Text(
                                        "Do you want to complete the Case?",
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            "close",
                                            style: TextStyle(fontSize: 16.sp),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            "Confirm",
                                            style: TextStyle(fontSize: 16.sp),
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                              takePhoto = false;
                            },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.location_on_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            "BOOK CASE",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  takePhoto == false
                      //!button that take a photo for situation
                      ? MaterialButton(
                          minWidth: 80.w,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r)),
                          height: 55.h,
                          color: AppColor.mainColor,
                          onPressed: () async {
                            await getImage();
                            takePhoto = true;
                            setState(() {});
                          },
                          child: Icon(
                            Icons.file_upload_outlined,
                            color: Colors.white,
                            size: 32.sp,
                          ),
                        )
                      : MaterialButton(
                          minWidth: 80.w,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r)),
                          height: 55.h,
                          color: Colors.green[700],
                          onPressed: () {},
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 32.sp,
                          ),
                        )
                ],
              ),
              SizedBox(
                height: 15.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
