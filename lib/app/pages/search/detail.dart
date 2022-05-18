import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/app/pages/search/widgets/customAppbar.dart';

class HouseDetail extends StatelessWidget {
  const HouseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Detail"),
      body: Column(
        children: [
          Image.network(
              "https://www.homestratosphere.com/wp-content/uploads/2018/02/single-family-detached-home.jpg"),
          DotsIndicator(
            dotsCount: 3,
            decorator: DotsDecorator(
                size: Size(19, 6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                activeSize: Size(19, 6),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0))),
          )
        ],
      ),
    );
  }
}
