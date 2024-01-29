import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget profileInfo() {
  return Container(
    height: 63.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r), color: whiteLight),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          height: 40.h,
          width: 40.w,
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50.r)),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            subTitleText('Total Balance', size: 10),
            subTitleText('\$567980', size: 12, color: primaryColor),
            const SizedBox()
          ],
        ),
        SizedBox(width: 20.w)
      ],
    ),
  );
}