import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/constants/colors.dart';
import 'package:nirvabona_app/global_widgets/custom_button.dart';
import 'package:nirvabona_app/global_widgets/custom_texts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          buildHeader(),
          Container(
            height: 272.h,
            width: double.infinity,
            padding: EdgeInsets.all(30.h),
            decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: whiteLight,
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 8), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4.r),
                    bottomRight: Radius.circular(4.r))),
            child: Column(
              children: [
                buildProfileItem('Edit Profile', 'editPro', primaryColor),
                SizedBox(height: 10.h),
                buildProfileItem('Address', 'homeIcon', Colors.red),
                SizedBox(height: 10.h),
                buildProfileItem('Notification', 'notification',Colors.yellow),
                SizedBox(height: 10.h),
                buildProfileItem('Language', 'language',Colors.orange),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.h,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(50.r)),
                      child: Center(
                        child: SizedBox(
                            height: 12.h,
                            width: 12.w,
                            child: Image.asset('assets/images/activity.png',
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    subTitleText("Activity Status",
                        fontWeight: FontWeight.w500,
                        size: 15,
                        color: secondaryTextColor),
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      height: 14.h,
                      width: 22.w,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: CupertinoSwitch(
                          value: true,
                          onChanged: (w) {},
                          activeColor: Colors.green,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 200.h),
          Padding(
              padding: EdgeInsets.all(20.h),
              child: customButton('Logout', textSize: 15))
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.all(20.h),
      height: 200.h,
      width: double.infinity,
      color: primaryColor,
      child: Row(
        children: [
          SizedBox(
            height: 100.h,
            width: 100.h,
            child: Image.asset("assets/images/profile.png"),
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleText('Andrew Lorin',
                  size: 26, fontWeight: FontWeight.w700, color: white),
              SizedBox(height: 6.h),
              subTitleText('Level 5',
                  size: 16, fontWeight: FontWeight.w500, color: white)
            ],
          )
        ],
      ),
    );
  }

  Widget buildProfileItem(String text, String imgName, Color color) {
    return Row(
      children: [
        Container(
          height: 30.h,
          width: 30.h,
          decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50.r)),
          child: Center(
            child: SizedBox(
                height: 12.h,
                width: 12.w,
                child: Image.asset('assets/images/$imgName.png',
                    fit: BoxFit.cover)),
          ),
        ),
        SizedBox(width: 10.w),
        subTitleText(text,
            fontWeight: FontWeight.w500, size: 15, color: secondaryTextColor),
        Expanded(child: SizedBox()),
        Icon(
          Icons.arrow_forward_ios_sharp,
          color: secondaryTextColor,
          size: 18,
        ),
      ],
    );
  }
}
