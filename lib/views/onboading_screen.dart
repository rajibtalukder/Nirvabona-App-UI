import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/constants/colors.dart';
import 'package:nirvabona_app/global_widgets/custom_button.dart';
import 'package:nirvabona_app/global_widgets/custom_texts.dart';
import 'package:nirvabona_app/views/login_screen.dart';

class OnboadingScreen extends StatelessWidget {
  const OnboadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(25.w, 25.h, 25.w, 20.h),
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              SizedBox(
                height: 332.h,
                width: 332.w,
                child: Image.asset(
                  'assets/images/onboading.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 30.h),
              titleText('Be A Nirvabona Agent', size: 24),
              SizedBox(height: 30.h),
              subTitleText(
                  'Lorem ipsum dolor sit amet consectetur. '
                  'Massa pulvinar auctor morbi risus leo ipsum. Amet quis'
                  ' maecenas non eu. Phasellus cursus nec eu sit.',
                  size: 14,
                  color: secondaryTextColor,
                  fontWeight: FontWeight.w400,
                  textCenter: true),
              const Expanded(child: SizedBox()),
              customButton('Next', textSize: 16, onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const LoginScreen()));
              })
            ],
          ),
        ));
  }
}
