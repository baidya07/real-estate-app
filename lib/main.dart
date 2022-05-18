import 'package:flutter/material.dart';
import 'package:real_estate_app/app/pages/dashboard_page.dart';
import 'package:real_estate_app/app/resources/colors.dart';

import 'main_common.dart';

Future<void> main() async{
  await mainCommon();

  runApp(
      const Application()
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Real-Estate',
//       theme: ThemeData(
//         primaryColor: primaryColor,
//       ),
//       home: DashboardPage(),
//     );
//   }
// }
