import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/views/custom_navigation.dart';
import 'package:nirvabona_app/views/home/home_screen.dart';

import '../constants/colors.dart';
import '../global_widgets/custom_button.dart';
import '../global_widgets/custom_texts.dart';
import 'login_screen.dart';

class RegistrationSubmitScreen extends StatelessWidget {
  const RegistrationSubmitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(25.w, 25.h, 25.w, 20.h),
          child: Column(
            children: [
              SizedBox(height: 80.h),
              SizedBox(
                height: 332.h,
                width: 332.w,
                child: Image.asset(
                  'assets/images/registration.png',
                  fit: BoxFit.contain,
                ),
              ),
              titleText('Your request have been submited', size: 20),
              SizedBox(height: 30.h),
              subTitleText(
                  'Lorem ipsum dolor sit amet consectetur. Nisi eu et pharetra '
                  'ultricies pretium at. Ut adipiscing dui placerat cras dolor '
                  'ullamcorper euismod enim malesuada. Sit ipsum duis non orci '
                  'dolor. Nulla quam nullam sed cum sapien morbi ultrices nunc.',
                  size: 11,
                  color: secondaryTextColor,
                  fontWeight: FontWeight.w400,
                  textCenter: true),
              const Expanded(child: SizedBox()),
              customButton('Back to Home', textSize: 16, onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const CustomNavigation()));
              })
            ],
          ),
        ));
  }
}
