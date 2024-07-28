import 'package:flutter/material.dart';
import 'package:test_flutter_in_kali_linux/View/Screens/adminUser/blocked_users.dart';
import 'package:test_flutter_in_kali_linux/View/Screens/adminUser/home.dart';
import 'package:test_flutter_in_kali_linux/View/Screens/adminUser/users.dart';

class BNB extends StatefulWidget {
  const BNB({super.key});

  @override
  State<BNB> createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  int currentIndex = 0;
  List screens = [const AdminHome(), const Users(), const BlockedUsers()];
  @override
  Widget build(BuildContext context) {
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
      body: screens.elementAt(currentIndex),
    );
  }
}
