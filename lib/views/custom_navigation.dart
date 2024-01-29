import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvabona_app/views/home/withdraw1_screen.dart';
import 'package:nirvabona_app/views/profile_screen.dart';

import '../constants/colors.dart';
import 'home/home_screen.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _bottomNavIndex = 0;

  List<IconData> iconsTemp = [
    Icons.home_outlined,
    Icons.shopping_cart_outlined,
    Icons.favorite_outline,
    Icons.person_outline,
  ];

  List<IconData> icons = [];

  List<Widget> pages = [
    const HomeScreen(),
    const Withdraw1Screen(),
    const HomeScreen(),//please add here the required page
    const ProfileScreen(), //please add here the required page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
        resizeToAvoidBottomInset: true,
        extendBody: true,
        body: pages[_bottomNavIndex],
        bottomNavigationBar: Container(
          height: 95.h,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _bottomNavIndex,
            elevation: 10,
            selectedLabelStyle:
            const TextStyle(color: primaryColor, fontSize: 12),
            items: [
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset('assets/images/homeIcon.png',
                      fit: BoxFit.contain),
                ),
                activeIcon: SizedBox(
                    height: 20.h,
                    width: 21.w,
                    child: Image.asset('assets/images/homeIcon.png',
                        fit: BoxFit.contain, color: primaryColor)),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset('assets/images/cartIcon.png',
                      fit: BoxFit.contain),
                ),
                activeIcon: SizedBox(
                    height: 20.h,
                    width: 21.w,
                    child: Image.asset('assets/images/cartIcon.png',
                        fit: BoxFit.contain, color: primaryColor)),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset('assets/images/favouriteIcon.png',
                      fit: BoxFit.contain),
                ),
                activeIcon: SizedBox(
                    height: 20.h,
                    width: 21.w,
                    child: Image.asset('assets/images/favouriteIcon.png',
                        fit: BoxFit.contain, color: primaryColor)),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset('assets/images/profileIcon.png',
                      fit: BoxFit.contain),
                ),
                activeIcon: SizedBox(
                    height: 20.h,
                    width: 21.w,
                    child: Image.asset('assets/images/profileIcon.png',
                        fit: BoxFit.contain, color: primaryColor)),
                label: 'Profile',
              ),
            ],
            onTap: (index) {
              setState(() {
                _bottomNavIndex = index;
              });
            },
          ),
        ));
  }
}
