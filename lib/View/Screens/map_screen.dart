import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/View/Component/appbar.dart';
import 'package:test_flutter_in_kali_linux/View/Component/switchgridtile.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    bool switchMajorvalue = false;
    bool switchMinorvalue = false;

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
                  SwitchGridTile(switchTitle: "Major", value: switchMajorvalue),
                  SwitchGridTile(switchTitle: "Minor", value: switchMinorvalue),
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
                      color: Colors.deepOrange,
                      onPressed: () {},
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
                  1 == 1
                      //!button that take a photo for situation
                      ? MaterialButton(
                          minWidth: 80.w,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r)),
                          height: 55.h,
                          color: Colors.deepOrange,
                          onPressed: () {},
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
                height: 25.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
