import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/constants/colors.dart';
import 'package:nirvabona_app/global_widgets/custom_button.dart';
import 'package:nirvabona_app/global_widgets/custom_text_field.dart';
import 'package:nirvabona_app/global_widgets/custom_texts.dart';
import 'package:nirvabona_app/views/registration_submit_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
                    child: subTitleText('Become A Reselling Agent',
                        size: 16, fontWeight: FontWeight.w700)),
                SizedBox(height: 20.h),
                subTitleText('Name', fontWeight: FontWeight.w500, size: 16),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    hintText: 'Write your name'),
                SizedBox(height: 20.h),
                subTitleText('Phone Number',
                    fontWeight: FontWeight.w500, size: 16),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    hintText: 'Enter Phone Number'),
                SizedBox(height: 20.h),
                subTitleText('Select Division',
                    fontWeight: FontWeight.w500, size: 16),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    hintText: 'Choose your division',
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 20.h),
                subTitleText('Select District',
                    fontWeight: FontWeight.w500, size: 16),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    hintText: 'Choose your district',
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 20.h),
                subTitleText('Select Division',
                    fontWeight: FontWeight.w500, size: 16),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    hintText: 'Choose your area',
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 20.h),
                subTitleText('Select Thana',
                    fontWeight: FontWeight.w500, size: 16),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    hintText: 'Choose your area',
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 20.h),
                subTitleText('Agent Type',
                    fontWeight: FontWeight.w500, size: 16),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    hintText: 'Choose your area',
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 20.h),
                subTitleText('Upload Front Of NID',
                    fontWeight: FontWeight.w500, size: 16),
                SizedBox(height: 10.h),
                DottedBorder(
                  color: primaryColor,
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(4.r),
                  child: Container(
                      height: 48.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //border: Border.all(color: primaryColor,width: 1),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.upload, color: primaryColor),
                          subTitleText('Upload Image',
                              size: 14,
                              color: primaryColor,
                              fontWeight: FontWeight.w500),
                        ],
                      )),
                ),
                SizedBox(height: 20.h),
                subTitleText('Upload Back Of NID',
                    fontWeight: FontWeight.w500, size: 16),
                SizedBox(height: 10.h),
                DottedBorder(
                  color: primaryColor,
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(4.r),
                  child: Container(
                      height: 48.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //border: Border.all(color: primaryColor,width: 1),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.upload, color: primaryColor),
                          subTitleText('Upload Image',
                              size: 14,
                              color: primaryColor,
                              fontWeight: FontWeight.w500),
                        ],
                      )),
                ),
                SizedBox(height: 40.h),
                customButton('Submit', textSize: 16, onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const RegistrationSubmitScreen()));
                }),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
