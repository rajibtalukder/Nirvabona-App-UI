import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/constants/colors.dart';
import 'package:nirvabona_app/global_widgets/custom_button.dart';
import 'package:nirvabona_app/global_widgets/custom_texts.dart';
import 'package:nirvabona_app/views/home/widgets/profile_info.dart';
import 'package:nirvabona_app/views/home/widgets/transaction_item.dart';
import 'package:nirvabona_app/views/home/withdraw1_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25.w, 25.h, 25.w, 20.h),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40.h,
                      width: 30.w,
                      child: Image.asset('assets/images/icon_menu.png'),
                    ),
                    SizedBox(
                      height: 62.h,
                      width: 107.w,
                      child: Image.asset('assets/images/nirvabona.png'),
                    ),
                    SizedBox(
                      height: 14.h,
                      width: 22.w,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: CupertinoSwitch(
                          value: true,
                          onChanged: (w) {},
                          activeColor: green,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                profileInfo(),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    subTitleText('Transaction History', size: 16),
                    Container(
                      height: 24.r,
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          border:
                              Border.all(color: secondaryTextColor, width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          subTitleText('Last 3 Months',
                              size: 10, color: secondaryTextColor),
                          const Icon(Icons.keyboard_arrow_down_outlined,
                              size: 16, color: secondaryTextColor)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 43.h,
                              width: 335.w,
                              padding: EdgeInsets.all(6.r),
                              decoration: BoxDecoration(
                                  color: whiteLight,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.r))),
                              child: TabBar(
                                indicator: const BoxDecoration(
                                  color: primaryColor,
                                ),
                                unselectedLabelColor: secondaryTextColor,
                                tabs: [
                                  Text('All',
                                      style: TextStyle(fontSize: 14.sp)),
                                  Text('Received',
                                      style: TextStyle(fontSize: 14.sp)),
                                  Text('Withdrawal',
                                      style: TextStyle(fontSize: 14.sp)),
                                ],
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 600.h,
                        child: TabBarView(
                          children: [
                            all(),
                            empty(),
                            empty(),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      customButton('Withdraw Balance', textSize: 16,
                          onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => const Withdraw1Screen()));
                      })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  all() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          subTitleText('Today',
              color: secondaryTextColor, size: 10, fontWeight: FontWeight.w300),
          transactionItem('Galib Kamal', '450', 'FGFGHG67GH', '01799040321'),
          transactionItem('Admin', '450', 'FGFGHG67GH', '01799040321',
              tColor: pink, titleType: 'Sent to'),
          transactionItem('Galib Kamal', '450', 'FGFGHG67GH', '01799040321'),
          transactionItem('Admin', '450', 'FGFGHG67GH', '01799040321',
              tColor: pink, titleType: 'Sent to'),
          SizedBox(height: 10.h),
          subTitleText('18 june',
              color: secondaryTextColor, size: 10, fontWeight: FontWeight.w300),
          transactionItem('Galib Kamal', '450', 'FGFGHG67GH', '01799040321'),
          transactionItem('Admin', '450', 'FGFGHG67GH', '01799040321',
              tColor: pink, titleType: 'Sent to'),
          transactionItem('Galib Kamal', '450', 'FGFGHG67GH', '01799040321'),
          transactionItem('Admin', '450', 'FGFGHG67GH', '01799040321',
              tColor: pink, titleType: 'Sent to'),
        ],
      ),
    );
  }

  empty() {
    return Container(
      child: Center(child: Text('Empty')),
    );
  }
}
