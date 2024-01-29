import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/constants/colors.dart';
import 'package:nirvabona_app/global_widgets/custom_button.dart';
import 'package:nirvabona_app/global_widgets/custom_texts.dart';
import 'package:nirvabona_app/views/home/withdraw_confirm.dart';

class Withdraw2Screen extends StatelessWidget {
  const Withdraw2Screen({super.key});

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
              height: 256.h,
              width: double.infinity,
              color: whiteLight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: subTitleText('Withdraw Summry',
                        size: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10.w),
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r)),
                            child: Image.asset('assets/images/profilePic.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(),
                              subTitleText('Cody Fisher', size: 12),
                              subTitleText('Kalitola , Bogura',
                                  size: 10,
                                  color: secondaryTextColor,
                                  fontWeight: FontWeight.w300),
                              const SizedBox()
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                        ],
                      )),
                  SizedBox(height: 10.h),
                  Container(
                    height: 1.h,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    height: 60.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            subTitleText('Ammount',
                                fontWeight: FontWeight.w400,
                                size: 12,
                                color: secondaryTextColor),
                            subTitleText('\$4500',
                                fontWeight: FontWeight.w500, size: 14),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            subTitleText('Charge',
                                fontWeight: FontWeight.w400,
                                size: 12,
                                color: secondaryTextColor),
                            subTitleText('\$0.00',
                                fontWeight: FontWeight.w500, size: 14),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            subTitleText('Total',
                                fontWeight: FontWeight.w400,
                                size: 12,
                                color: secondaryTextColor),
                            subTitleText('\$4500',
                                fontWeight: FontWeight.w500, size: 14),
                          ],
                        ),
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
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter PIN',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 150.w),
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.all(10.0.w),
              child:
                  customButton('Confirm Withdraw', textSize: 16, onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.r),
                        ),
                        content: Container(
                          height: 262.h,
                          width: 290.w,
                          decoration: BoxDecoration(
                            color: white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.w),
                            child: Column(
                              children: [
                                subTitleText('Opps Wrong PIN',
                                    size: 14, fontWeight: FontWeight.w700),
                                SizedBox(
                                  height: 168.h,
                                  width: 168.w,
                                  child: Image.asset("assets/images/alert.png"),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    WithdrawConfirm()));
                                      },
                                      child: Container(
                                        height: 28.h,
                                        width: 110.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6.r),
                                            color: primaryColor),
                                        child: Center(
                                          child: subTitleText('Retry',
                                              color: white,
                                              fontWeight: FontWeight.w700,
                                              size: 12),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 28.h,
                                      width: 110.w,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: primaryColor, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(6.r),
                                          color: white),
                                      child: Center(
                                        child: subTitleText('Change PIN',
                                            color: primaryColor,
                                            fontWeight: FontWeight.w500,
                                            size: 12),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ));
                  },
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
