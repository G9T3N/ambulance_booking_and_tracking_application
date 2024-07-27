import 'package:flutter/material.dart';

abstract class SignUpController {
  signUp();
  dispose();
  onInit();
  onCreate();
  goToLogin(BuildContext context);
}

class SignupControllerImp extends SignUpController {
  TextEditingController? email;
  TextEditingController? idCard;
  TextEditingController? name;
  TextEditingController? phoneNo;
  TextEditingController? password;
  TextEditingController? address;

  static List<String> fieldName = <String>[
    "Email",
    "CINC",
    "Name",
    "Phone Number",
    "Password",
    "Address",
  ];
  static List<String> cities = <String>[
    "Sana'a",
    "Ibb",
    "Damar",
    "Saadah",
    "Taiz",
    "Hajah",
    "Al-Hudaidah",
  ];
  static List<IconData> fieldIcons = <IconData>[
    Icons.mail_outline,
    Icons.credit_card,
    Icons.person,
    Icons.call,
    Icons.password,
    Icons.remove_red_eye_outlined,
    Icons.location_on_sharp,
  ];
  @override
  signUp() {}

  @override
  void dispose() {
    email!.dispose();
    idCard!.dispose();
    name!.dispose();
    phoneNo!.dispose();
    password!.dispose();
    address!.dispose();
  }

  @override
  goToLogin(context) {
    Navigator.of(context).pushNamed("login");
  }

  @override
  onInit() {
    email = TextEditingController();
    idCard = TextEditingController();
    name = TextEditingController();
    phoneNo = TextEditingController();
    password = TextEditingController();
    address = TextEditingController();
  }

  @override
  onCreate() {}
}
