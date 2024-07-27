import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/View/Component/appbar.dart';
import 'package:test_flutter_in_kali_linux/View/Component/record_card.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 1;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red,
          unselectedIconTheme: const IconThemeData(color: Colors.red),
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {});
            currentIndex = value;
          },
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Users",
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: "Blocked",
              icon: Icon(Icons.person_off_rounded),
            ),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.h),
            child: Column(
              children: [
                const MYAppbar(
                  title: "ADMIN",
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "NEW",
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
                const RecordCard(
                  name: "Haroon Masih",
                  phone: "+92 313 1907600",
                  address: "Hoti Marden",
                  type: "Medical  ",
                  date: "2023/11/2 -19:00",
                  emergencyStatus: "NEW",
                  cardColor: Colors.yellow,
                  image: "assets/images/sick.jpg",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
