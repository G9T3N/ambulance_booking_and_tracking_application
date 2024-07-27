import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/View/Component/appbar.dart';
import 'package:test_flutter_in_kali_linux/View/Component/record_card.dart';

class BlockedUsers extends StatelessWidget {
  const BlockedUsers({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
            ),
            child: Column(
              children: [
                const MYAppbar(
                  title: "ADMIN",
                ),
                SearchBar(
                  padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 2.h, horizontal: 16.w)),
                  shape: WidgetStatePropertyAll(BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r))),
                  backgroundColor: const WidgetStatePropertyAll(Colors.deepOrange),
                  leading: const Icon(
                    Icons.search,
                  ),
                  hintText: "Search by email",
                  hintStyle: WidgetStatePropertyAll(
                      Theme.of(context).textTheme.bodySmall),
                ),
                SizedBox(
                  height: 12.h,
                ),
                const RecordCard(
                  name: "Haroon Masih",
                  phone: "+92 313 1907600",
                  address: "Hoti Marden",
                  type: "Medical  ",
                  date: "2023/11/2 -19:00",
                  emergencyStatus: "BLOCK",
                  cardColor: Colors.red,
                  image: "assets/images/id.jpg",
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
