import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/Controller/home_controller.dart';
import 'package:test_flutter_in_kali_linux/Core/color/appcolors.dart';
import 'package:test_flutter_in_kali_linux/View/Component/appbar.dart';
import 'package:test_flutter_in_kali_linux/View/Component/btn.dart';
import 'package:url_launcher/url_launcher.dart';

class UserHome extends StatefulWidget {
  const UserHome({
    super.key,
  });

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    // callNumber() async {
    //   const number = '1122'; //set the number here
    //   bool? res = await FlutterPhoneDirectCaller.callNumber(number);
    // }
    void openPhone() async {
      Uri phoneno = Uri.parse('tel:1122');
      if (await launchUrl(phoneno)) {
        //dialer opened
      } else {
        //dailer is not opened
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Column(
            children: [
              const MYAppbar(),
              SizedBox(height: 20.h),
              Expanded(
                flex: 4,
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.64.h,
                      crossAxisSpacing: 12.w,
                      mainAxisSpacing: 12.h),
                  children: [
                    ...List.generate(
                        HomeControllerImp.emergencySituationType.length,
                        (int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("usermapScreen");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(color: AppColor.mainColor)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/images/${HomeControllerImp.homeImagePath[index]}.jpg",
                                  width: 120.w,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  HomeControllerImp
                                      .emergencySituationType[index],
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    })
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              AppButton(
                  btnText: "1122 Call",
                  textStyle: Theme.of(context).textTheme.bodyMedium!,
                  onPressed: () {
                    // callNumber();
                    openPhone();
                  }),
              SizedBox(height: 50.h),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r)),
                        color: AppColor.mainColor,
                        height: 50.h,
                        onPressed: () {
                          Navigator.of(context).pushNamed("recordRequest");
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.inventory_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  "MY RECORD ",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            Positioned(
                                right: 5.w,
                                top: -33.h,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.r),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 3,
                                      )),
                                  child: CircleAvatar(
                                    radius: 15.r,
                                    backgroundColor: Colors.green,
                                    child: Text("1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r)),
                        color: AppColor.mainColor,
                        height: 50.h,
                        onPressed: () {
                          Navigator.of(context).pushNamed("profile");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.inventory_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "PROFILE ",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
