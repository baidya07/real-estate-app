import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:real_estate_app/app/pages/profile_page/profile_page.dart';
import 'package:real_estate_app/app/resources/colors.dart';
import 'package:real_estate_app/routes/router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.black),
      bodyTextStyle: TextStyle(fontSize: 14.0, color: Colors.black),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
      imageFlex: 2);
  final splashKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        key: splashKey,
        pages: [
          PageViewModel(
            title: 'Find the place of your dreams',
            body: 'create a emotional story that describes better than words',
            image: Image.asset(
              'assets/images/dummy_images/house.jpg',
              width: 350,
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'Find the place of your dreams',
            body: 'create a emotional story that describes better than words',
            image: Image.asset(
              'assets/images/dummy_images/house1_image.jpg',
              width: 350,
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'Find the place of your dreams',
            body: 'create a emotional story that describes better than words',
            image: Image.asset(
              'assets/images/dummy_images/house1_image.jpg',
              // height: 300,
              width: 350,
            ),
            decoration: pageDecoration,
          ),
        ],
        onDone: () => context.router.navigate(LandingRoute()),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: false,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: true,
        //rtl: true, // Display as right-to-left
        back: const Icon(Icons.arrow_back),
        skip: Text('Skip',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(fontWeight: FontWeight.w600)),
        next: const Icon(Icons.arrow_forward),
        done: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))
            )
          ),
            onPressed: () {
              context.router.navigate(LandingRoute());
            },
            child: Text('Done',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontWeight: FontWeight.w500))),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}

void gotoHome(context) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const ProfilePage()),
    );
