import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/View/Screens/home.dart';

import 'package:test_flutter_in_kali_linux/View/Screens/login.dart';
import 'package:test_flutter_in_kali_linux/View/Screens/map_screen.dart';
import 'package:test_flutter_in_kali_linux/View/Screens/profile.dart';
import 'package:test_flutter_in_kali_linux/View/Screens/record_request.dart';
import 'package:test_flutter_in_kali_linux/View/Screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: (context, child) {
          return MaterialApp(
            routes: {
              "login": (context) => const Login(),
              "signup": (context) => const SignUp(),
              "userhome": (context) => const UserHome(),
              "profile": (context) => const Profile(),
              "recordRequest": (context) => const RecordRequest(),
              "mapScreen": (context) => const MapScreen(),
            },
            builder: (context, child) {
              final originalTextScaleFactor = MediaQuery.of(context).textScaler;
              final boldText = MediaQuery.boldTextOf(context);
              final newMediaQueryData = MediaQuery.of(context).copyWith(
                textScaler: originalTextScaleFactor.clamp(
                  minScaleFactor: 0.8,
                  maxScaleFactor: 1.0,
                ),
                boldText: boldText,
              );
              return MediaQuery(data: newMediaQueryData, child: child!);
            },
            debugShowCheckedModeBanner: false,
            color: Colors.white,
            theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: const AppBarTheme(
                  systemOverlayStyle: SystemUiOverlayStyle(
                      systemNavigationBarIconBrightness: Brightness.dark,
                      statusBarBrightness: Brightness.dark),
                ),
                primaryIconTheme: const IconThemeData(color: Colors.white),
                iconTheme: const IconThemeData(
                  color: Colors.white,
                ),
                textTheme: TextTheme(
                    labelMedium:
                        TextStyle(color: Colors.white, fontSize: 13.sp),
                    bodyLarge: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.sp,
                      letterSpacing: 1.2.sp,
                    ),
                    bodyMedium: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp,
                      letterSpacing: 1.2.sp,
                    ),
                    bodySmall: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ))),
            home: const SafeArea(child: Login()),
          );
        });
  }
}
