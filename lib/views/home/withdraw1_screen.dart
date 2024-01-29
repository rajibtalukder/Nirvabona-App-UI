import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/constants/colors.dart';
import 'package:nirvabona_app/global_widgets/custom_button.dart';
import 'package:nirvabona_app/global_widgets/custom_texts.dart';
import 'package:nirvabona_app/views/home/withdraw2_screen.dart';

class Withdraw1Screen extends StatelessWidget {
  const Withdraw1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Padding(
                padding: EdgeInsets.all(10.w),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new_sharp, size: 16),
                    SizedBox(width: 15.w),
                    titleText('Withdraw Balance',
                        size: 16, fontWeight: FontWeight.w700)
                  ],
                )),
            SizedBox(height: 20.h),
            Container(
              height: 213.h,
              width: double.infinity,
              color: whiteLight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: subTitleText('To',
                        size: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Row(
                      children: [
                        Container(
                            height: 25.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(50.r),
                            )),
                        SizedBox(width: 10.w),
                        subTitleText('Admin', size: 12)
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 1.h,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: subTitleText('Enter ammount',
                        size: 14, fontWeight: FontWeight.w500),
                  ),
                  TextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '\$0.00 (minimum\$4000)',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 90.w),
                    ),
                  )

                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.all(10.0.w),
              child: customButton('Withdraw', textSize: 16,onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Withdraw2Screen()));
              }),
            )
          ],
        ),
      ),
    );
  }
}
