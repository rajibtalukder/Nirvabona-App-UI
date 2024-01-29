import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/constants/colors.dart';
import 'package:nirvabona_app/global_widgets/custom_texts.dart';

Widget transactionItem(
    String titleName, String amount, String transId, String phn,
    {Color tColor = primaryColor, String titleType= 'From'}) {
  return Container(
    height: 66.h,
    padding: EdgeInsets.all(10.w),
    margin: EdgeInsets.only(top: 10.h),
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: whiteLight.withOpacity(0.8),
            spreadRadius: 3,
            blurRadius: 8,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(4.r))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            subTitleText('$titleType: $titleName',
                fontWeight: FontWeight.w700, size: 10, color: tColor),
            subTitleText('Trans ID: $transId',
                fontWeight: FontWeight.w400,
                size: 8,
                color: secondaryTextColor),
            subTitleText('Phone number: $phn',
                fontWeight: FontWeight.w400,
                size: 8,
                color: secondaryTextColor.withOpacity(0.8)),
          ],
        ),
        titleText('\$$amount', color: Colors.green, size: 12)
      ],
    ),
  );
}
