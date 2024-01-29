import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/constants/colors.dart';
import 'package:nirvabona_app/global_widgets/custom_texts.dart';
import 'package:nirvabona_app/views/profile_screen.dart';

class WithdrawConfirm extends StatelessWidget {
  const WithdrawConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 348.h,
              width: 348.w,
              child: Image.asset("assets/images/withdrawConfirm.png"),
            ),
            subTitleText('Withdraw Successful', size: 24),
            SizedBox(height: 30.h),
            GestureDetector(
              onTap: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => ProfileScreen()));
              },
              child: Container(
                height: 50.h,
                width: 160.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: primaryColor),
                child: Center(
                  child: subTitleText('Go Home',
                      color: white, fontWeight: FontWeight.w700, size: 14),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
