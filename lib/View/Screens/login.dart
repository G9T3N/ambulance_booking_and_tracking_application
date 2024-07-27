import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/Controller/Auth/login_controller.dart';
import 'package:test_flutter_in_kali_linux/View/Component/btn.dart';
import 'package:test_flutter_in_kali_linux/View/Component/text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "LOGIN",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.sp,
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/login.jpg",
                width: 250.w,
              ),
              SizedBox(
                height: 25.h,
              ),
              const AppTextField(
                  hintText: "Enter your email",
                  prefixWidget: Icon(
                    Icons.mail_outline,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 10.h,
              ),
              const AppTextField(
                hintText: "Password",
                prefixWidget: Icon(Icons.key),
                suffixWidget: Icon(Icons.remove_red_eye),
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  textAlign: TextAlign.right,
                  "Forget Password?",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              AppButton(
                btnText: "LOGIN",
                textStyle: Theme.of(context).textTheme.bodyMedium!,
                onPressed: () {
                  Navigator.of(context).pushNamed('userhome');
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              Wrap(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      " SignUp",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () {
                      LoginControllerImp controllerImp = LoginControllerImp();
                      controllerImp.goToSignUp(context);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
