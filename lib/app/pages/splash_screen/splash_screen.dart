import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:real_estate_app/app/pages/profile_page/profile_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.black),
      bodyTextStyle: TextStyle(fontSize: 14.0, color: Colors.black),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
      imageFlex: 2);
  final splashKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('welcome'),
      //   centerTitle: true,
      // ),
      body: IntroductionScreen(
        key: splashKey,
        pages: [
          PageViewModel(
            title: 'Find the place of your dreams',
            body: 'create a emotional story that describes better than words',
            image: Image.asset(
              'assets/house.jpg',
              width: 350,
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'Find the place of your dreams',
            body: 'create a emotional story that describes better than words',
            image: Image.asset(
              'assets/house1_image.jpg',
              width: 350,
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'Find the place of your dreams',
            body: 'create a emotional story that describes better than words',
            image: Image.asset(
              'assets/house1_image.jpg',
              // height: 300,
              width: 350,
            ),
            decoration: pageDecoration,
          ),
        ],
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(color: Colors.black),
        ),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
        done: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Done',
          ),
        ),
        skipOrBackFlex: 0,
        onDone: () => gotoHome(context),
        dotsDecorator: const  DotsDecorator(
          size:  Size(5.0, 10.0),
          activeColor: Colors.black,
          color:  Color(0xFFBDBDBD),
          activeSize:  Size(10.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}

void gotoHome(context) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const ProfilePage()),
    );
