import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/Controller/Auth/signup_controller.dart';
import 'package:test_flutter_in_kali_linux/View/Component/btn.dart';
import 'package:test_flutter_in_kali_linux/View/Component/text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                "SIGNUP",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.sp,
                    color: Colors.black),
              ),
              SizedBox(
                height: 25.h,
              ),
              Image.asset(
                "assets/images/signup.jpg",
                width: 250.w,
              ),
              SizedBox(
                height: 25.h,
              ),
              ...List.generate(SignupControllerImp.fieldName.length,
                  (int index) {
                return index == 4
                    ? Column(
                        children: [
                          AppTextField(
                            hintText: SignupControllerImp.fieldName[index],
                            prefixWidget: Icon(
                              SignupControllerImp.fieldIcons[4],
                            ),
                            suffixWidget:
                                Icon(SignupControllerImp.fieldIcons[5]),
                          ),
                          SizedBox(
                            height: 5.h,
                          )
                        ],
                      )
                    : Column(
                        children: [
                          AppTextField(
                            hintText: SignupControllerImp.fieldName[index],
                            prefixWidget: Icon(
                              SignupControllerImp.fieldIcons[index],
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          )
                        ],
                      );
              }),
              ListTile(
                tileColor: Colors.deepOrange,
                leading: const Icon(Icons.list, color: Colors.white),
                title: Text(
                  "Select your Districts",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                trailing: DropdownButton(
                    alignment: Alignment.center,
                    borderRadius: BorderRadius.circular(12.r),
                    isExpanded: false,
                    dropdownColor: Colors.deepOrange,
                    items: [
                      ...List.generate(
                        SignupControllerImp.cities.length,
                        (int index) {
                          return DropdownMenuItem(
                            value: index,
                            child: Text(
                              SignupControllerImp.cities[index],
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          );
                        },
                      ),
                    ],
                    value: 0,
                    onChanged: (value) {},
                    icon: const Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.white)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/id.jpg"),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                    child: AppButton(
                      btnText: "Upload your Personal CNIC",
                      textStyle: const TextStyle(color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              AppButton(
                btnText: "SIGNUP",
                textStyle: Theme.of(context).textTheme.bodyMedium!,
                onPressed: () {},
              ),
              SizedBox(
                height: 20.h,
              ),
              Wrap(
                children: [
                  Text("Already have an account?",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      )),
                  InkWell(
                    child: Text(
                      " Login",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      SignupControllerImp controllerImp = SignupControllerImp();
                      controllerImp.goToLogin(context);
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
