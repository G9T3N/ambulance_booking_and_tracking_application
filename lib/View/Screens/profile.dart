import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/View/Component/btn.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 35.h,
              ),
              CircleAvatar(
                radius: 80.r,
                backgroundColor: const Color.fromARGB(255, 255, 208, 224),
                child: Icon(
                  Icons.person,
                  size: 100.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "User Name ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "ID ",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "CNIC ID ",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Email@gmail.com ",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Sana'a Alsalmi ",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10.h),
              Text(
                "YOUR CNIC ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 5.h),
              Image.asset("assets/images/id.jpg"),
              SizedBox(height: 30.h),
              AppButton(
                  btnText: "LOGOUT",
                  textStyle: Theme.of(context).textTheme.bodyMedium!,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
