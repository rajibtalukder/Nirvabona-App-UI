
import 'package:flutter/material.dart';

const primaryColor = Color(0xff334EA2);
const secondaryColor = Color(0xff0A6FCC);
const profileBgColor = Color(0xffE6F3FA);


const primaryTextColor = Color(0xff0B2145);
const secondaryTextColor = Color(0xff797979);
const blackTextColor = Color(0xff020202);
const blackTextColor2 = Color(0xff081224);
const titleTextColor = Color(0xff0C4C68);
const secondaryDarkTextColor = Color(0xff555555);

const borderColor = Color(0xffF3F3FF);

const red = Color(0xffFF2B18);
const white = Color(0xffFFFFFF);
const whiteLight = Color(0xffF6F6F6);
//const backgroundWhite = Color(0xffFFFFFF);
const green = Color(0xff0ACC86);
const purple = Color(0xff8E5FDF);
const pink = Color(0xffE02C82);


final Map<int, Color> _yellow700Map = {
  50:  primaryColor.withOpacity(0.1),
  100:  primaryColor.withOpacity(0.2),
  200:  primaryColor.withOpacity(0.3),
  300:  primaryColor.withOpacity(0.4),
  400:  primaryColor.withOpacity(0.5),
  500:  primaryColor.withOpacity(0.6),
  600:  primaryColor.withOpacity(0.7),
  700:  primaryColor.withOpacity(0.8),
  800:  primaryColor.withOpacity(0.9),
  900:  primaryColor.withOpacity(0.10),
};

final MaterialColor primarySwatch =
MaterialColor( primaryColor.value, _yellow700Map);