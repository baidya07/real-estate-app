import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData appTheme() {
  const textTheme = TextTheme(
      headline1: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w500,
      ),
      headline2: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      headline3: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      headline5: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      headline6: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        fontSize: 15,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
      ),
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xff144FFF),
      ),
      caption: TextStyle(
        fontSize: 12,
      ));

  final inputDecorationTheme = InputDecorationTheme(
    fillColor: Colors.white,
    contentPadding:
        const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
    // fillColor: Color(0XFFF0F0F0),
    filled: true,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        color: primaryColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        color: secondaryColor.withOpacity(0.6),
      ),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: primaryColor,
        ),
        borderRadius: BorderRadius.circular(5)),
    alignLabelWithHint: true,
  );
  final buttonTheme = ButtonThemeData(
    colorScheme: const ColorScheme.light(primary: primaryColor),
    buttonColor: primaryColor,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );

  return ThemeData(
    primaryColor: primaryColor,
    primaryColorLight: primaryColorLight,
    // highlightColor: secondaryColor,
    disabledColor: disabledColor,
    scaffoldBackgroundColor: scaffoldBgColor,
    fontFamily: "Inter",
    dividerColor: dividerColor,
    // appBarTheme: AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle(
    //   systemNavigationBarColor: primaryColor, // Navigation bar
    //   statusBarColor: Colors.transparent,
    //     statusBarIconBrightness: Brightness.light,
    //     statusBarBrightness: Brightness.light
    //   // Status bar
    // )),
    textTheme: textTheme,
    // textButtonTheme: TextButtonThemeData(style: ButtonStyle(
    //   backgroundColor: MaterialStateProperty.all(primaryColor),
    //   foregroundColor: MaterialStateProperty.all(primaryColor),
    //   overlayColor: MaterialStateProperty.all(primaryColor),
    //
    // )),
    inputDecorationTheme: inputDecorationTheme,
    buttonTheme: buttonTheme,
    colorScheme: const ColorScheme(
      primary: primaryColor,
      onPrimary: Colors.white,
      background: Colors.white,
      error: Colors.red,
      onSecondary: Colors.white,
      onError: Colors.red,
      surface: Colors.white,
      secondary: secondaryColor,
      onSurface: Colors.black,
      onBackground: Colors.white,
      brightness: Brightness.light,
    ),
    iconTheme: const IconThemeData(color: primaryColor),
    appBarTheme: const AppBarTheme(
        color: primaryColor,
        actionsIconTheme:
            IconThemeData(color: Colors.black, opacity: 0.7, size: 28)),
  );
}

// class AppTheme {
//   const AppTheme();
//   static ThemeData lightTheme = ThemeData(
//     primarySwatch: Colors.blue,
//     backgroundColor: LightColor.background,
//     primaryColor: LightColor.purple,
//     accentColor: LightColor.lightblack,
//     primaryColorDark: LightColor.Darker,
//     primaryColorLight: LightColor.brighter,
//     cardTheme: CardTheme(color: LightColor.background),
//     textTheme: ThemeData.light().textTheme,
//     iconTheme: IconThemeData(color: LightColor.lightblack),
//     bottomAppBarColor: LightColor.background,
//     dividerColor: LightColor.lightGrey,
//     disabledColor: LightColor.darkgrey,
//     colorScheme: ColorScheme(
//         primary: LightColor.purple,
//         primaryVariant: LightColor.purple,
//         secondary: LightColor.lightBlue,
//         secondaryVariant: LightColor.darkBlue,
//         surface: LightColor.background,
//         background: LightColor.background,
//         error: Colors.red,
//         onPrimary: LightColor.Darker,
//         onSecondary: LightColor.background,
//         onSurface: LightColor.Darker,
//         onBackground: LightColor.titleTextColor,
//         onError: LightColor.titleTextColor,
//         brightness: Brightness.dark),
//   );
//   static ThemeData darkTheme = ThemeData(
//     primarySwatch: Colors.blue,
//     backgroundColor: DarkColor.background,
//     primaryColor: DarkColor.purple,
//     accentColor: DarkColor.lightblack,
//     primaryColorDark: DarkColor.Darker,
//     primaryColorLight: DarkColor.brighter,
//     cardTheme: CardTheme(color: DarkColor.background),
//     textTheme: ThemeData.dark()
//         .textTheme
//         .copyWith(bodyText1: TextStyle(color: DarkColor.titleTextColor)),
//     iconTheme: IconThemeData(color: DarkColor.lightblack),
//     bottomAppBarColor: DarkColor.lightblack,
//     dividerColor: LightColor.subTitleTextColor,
//     colorScheme: ColorScheme(
//         primary: DarkColor.purple,
//         primaryVariant: DarkColor.purple,
//         secondary: DarkColor.lightBlue,
//         secondaryVariant: DarkColor.darkBlue,
//         surface: DarkColor.background,
//         background: DarkColor.background,
//         error: Colors.red,
//         onPrimary: DarkColor.white,
//         onSecondary: DarkColor.Darker,
//         onSurface: DarkColor.white,
//         onBackground: DarkColor.titleTextColor,
//         onError: DarkColor.titleTextColor,
//         brightness: Brightness.dark),
//   );
//
//   static TextStyle titleStyle =
//   const TextStyle(color: LightColor.titleTextColor, fontSize: 16);
//   static TextStyle subTitleStyle =
//   const TextStyle(color: LightColor.subTitleTextColor, fontSize: 12);
//
//   static TextStyle h1Style =
//   const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
//   static TextStyle h2Style = const TextStyle(fontSize: 22);
//   static TextStyle h3Style = const TextStyle(fontSize: 20);
//   static TextStyle h4Style = const TextStyle(fontSize: 18);
//   static TextStyle h5Style = const TextStyle(fontSize: 16);
//   static TextStyle h6Style = const TextStyle(fontSize: 14);
// }




/*


const kWhite = Color(0xffffffff);
const kGrey100 = Color(0xffF4F7FB);
const kGrey101 = Color(0xffE1E4FE);
const kGrey600 = Color(0xff596579);
const kGrey700 = Color(0xff374253);
const kBlue = Color(0xff5065F6);
const kBlue100 = Color(0xff144FFF);
const kBlue900 = Color(0xff172BB6);
const kYellow = Color(0xffFFCE3D);
const kGreen = Color(0xff1FBC71);
const klimeGreen = Color(0xff77AF04);
const kBlack800 = Color(0xff192638);
const kBlack900 = Color(0xff0F1825);
 */