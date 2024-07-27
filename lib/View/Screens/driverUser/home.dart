import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/View/Component/appbar.dart';
import 'package:test_flutter_in_kali_linux/View/Component/btn.dart';
import 'package:test_flutter_in_kali_linux/View/Component/record_card.dart';

class DriverHome extends StatefulWidget {
  const DriverHome({super.key});

  @override
  State<DriverHome> createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
  bool pressed = false;
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
                const MYAppbar(
                  title: "DRIVER",
                ),
                SizedBox(height: 15.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PENDING",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.logout,
                            color: Colors.black,
                            size: 32.sp,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                pressed == false
                    ? RecordCard(
                        name: "Haroon Masih",
                        phone: "+92 313 1907600",
                        address: "Hoti Marden",
                        type: "Medical  ",
                        date: "2023/11/2 -19:00",
                        emergencyStatus: "PENDING",
                        cardColor: Colors.yellow,
                        image: "assets/images/sick.jpg",
                        onPressed: () {
                          pressed = true;
                          setState(() {});
                        },
                      )
                    : const SizedBox(
                        height: 0,
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
                pressed == false
                    ? const RecordCard(
                        name: "Haroon Masih",
                        phone: "+92 313 1907600",
                        address: "Hoti Marden",
                        type: "Medical  ",
                        date: "2023/11/2 -19:00",
                        emergencyStatus: "CANCELED",
                        cardColor: Colors.red,
                      )
                    : Column(
                        children: [
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
                          const RecordCard(
                            name: "Haroon Masih",
                            phone: "+92 313 1907600",
                            address: "Hoti Marden",
                            type: "Medical  ",
                            date: "2023/11/2 -19:00",
                            emergencyStatus: "CANCELED",
                            cardColor: Colors.red,
                          ),
                        ],
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
