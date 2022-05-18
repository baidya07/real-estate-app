import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return const Color(0xff172BB6).withOpacity(opacity);
    } catch (e) {
      return const Color(0xff172BB6).withOpacity(opacity);
    }
  }

  static Color secondaryColor(double opacity) {
    try {
      // return Color(int.parse(settingRepo.setting.value.mainColor.replaceAll("#", "0xFF"))).withOpacity(opacity);
      return const Color(0xff596579).withOpacity(opacity);
    } catch (e) {
      return const Color.fromARGB(255, 219, 231, 250).withOpacity(opacity);
    }
  }
}

const primaryColor = Color(0xffe6cd6b);
const primaryColorLight = Color(0xff5065F6);
const secondaryColor = Color(0xffFED520);
const scaffoldBgColor = Color(0xffffffff);
const accentGreen = Color(0xff1FBC71);
const accentGreenLight = Color(0xff77AF04);
final disabledColor = Colors.grey[400];
const dividerColor = Colors.grey;


// Hex Opacity Values
//
// 100% — FF
// 95% — F2
// 90% — E6
// 85% — D9
// 80% — CC
// 75% — BF
// 70% — B3
// 65% — A6
// 60% — 99
// 55% — 8C
// 50% — 80
// 45% — 73
// 40% — 66
// 35% — 59
// 30% — 4D
// 25% — 40
// 20% — 33
// 15% — 26
// 10% — 1A
// 5% — 0D
// 0% — 00
