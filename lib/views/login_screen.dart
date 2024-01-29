import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/global_widgets/custom_text_field.dart';
import 'package:nirvabona_app/global_widgets/custom_texts.dart';
import 'package:nirvabona_app/views/registration_screen.dart';

import '../constants/colors.dart';
import '../global_widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25.w, 25.h, 25.w, 20.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 62.h,
                    width: 107.w,
                    child: Image.asset('assets/images/nirvabona.png'),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 359.h,
                  width: 359.w,
                  child: Image.asset('assets/images/login.png'),
                ),
                titleText('Agent Login', color: primaryColor, size: 20),
                SizedBox(height: 20.h),
                Row(children: [
                  const Icon(Icons.call, size: 16, color: purple),
                  SizedBox(width: 10.w),
                  subTitleText('Phone number',
                      size: 16, fontWeight: FontWeight.w400),
                ]),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    hintText: '017xxxxxxxx'),
                SizedBox(height: 10.h),
                Row(children: [
                  const Icon(Icons.lock, size: 16, color: purple),
                  SizedBox(width: 10.w),
                  subTitleText('Password',
                      size: 16, fontWeight: FontWeight.w400),
                ]),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    hintText: '**************'),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: subTitleText('Forgot Password?',
                      size: 12, fontWeight: FontWeight.w400,color: const Color(0xff0B9444)),
                ),
                SizedBox(height: 35.h),
                customButton('Log In', textSize: 16, onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const RegistrationScreen()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
