import 'package:flutter/material.dart';

abstract class LoginController {
  goToSignUp(BuildContext context);
  onInit();
  dispose();
  login();
  validate();
}

class LoginControllerImp extends LoginController {
  TextEditingController? email;
  TextEditingController? password;
  @override
  login() {
    throw UnimplementedError();
  }

  @override
  validate() {}

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    email!.dispose();
    password!.dispose();
  }

  @override
  void goToSignUp(BuildContext context) {
    Navigator.of(context).pushNamed("signup");
  }
}
