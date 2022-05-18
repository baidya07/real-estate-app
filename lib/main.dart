import 'package:flutter/material.dart';
import 'package:real_estate_app/app/pages/profile_page/profile_page.dart';
//import 'package:real_estate_app/app/pages/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
