import 'package:auto_route/auto_route.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/app/resources/colors.dart';
import 'package:real_estate_app/app/widgets/buttons.dart';

import '../../resources/size_constants.dart';

class HouseDetail extends StatelessWidget {
  const HouseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail",
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _ImageSlider(),
            _HouseDescription(),
          ],
        ),
      ),
    );
  }
}

class _HouseDescription extends StatelessWidget {
  const _HouseDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("IDR. 9000.000.000,-",
                  style: Theme.of(context).textTheme.headline6),
              SBC.lH,
              Text(
                "St. Second Avenue 780, NY",
                style: Theme.of(context).textTheme.caption!.copyWith(
                    fontWeight: (FontWeight.w600),
                    color: const Color.fromARGB(255, 122, 122, 122)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const _HouseDetail(
                    icons: Icon(Icons.home, color: Colors.black),
                    iconDetail: "4 rooms",
                  ),
                  SBC.lW,
                  const _HouseDetail(
                    iconDetail: "132 m",
                    icons: Icon(Icons.stop_outlined, color: Colors.black),
                  ),
                  SBC.lW,
                  const _HouseDetail(
                    iconDetail: "2 floor",
                    icons: Icon(Icons.home_work_sharp, color: Colors.black),
                  )
                ],
              ),
              const _DescriptionSection(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 166, 165, 165)),
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          // color: Colors.pink,
                          size: 35.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: PrimaryButton(onPressed: () {}, title: "BUY NOW"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _ImageSlider extends StatelessWidget {
  const _ImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            "https://www.homestratosphere.com/wp-content/uploads/2018/02/single-family-detached-home.jpg"),
        SBC.mH,
        Center(
          child: DotsIndicator(
            dotsCount: 3,
            decorator: DotsDecorator(
                size: const Size(19, 5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                activeSize: const Size(19, 5),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0))),
          ),
        ),
      ],
    );
  }
}

class _DescriptionSection extends StatelessWidget {
  const _DescriptionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Descriptions",
            style: Theme.of(context).textTheme.headline6,
          ),
          SBC.lH,
          Text(
            "After selling  \$ 500 of new apartments during the pandemic, we spoke to the experts from Laver Residential Projects to find out how buyer preferences have changed.",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: const Color.fromARGB(255, 122, 122, 122)),
          ),
        ],
      ),
    );
  }
}

class _HouseDetail extends StatelessWidget {
  final Icon icons;
  final String iconDetail;
  const _HouseDetail({Key? key, required this.iconDetail, required this.icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(50)),
              child: icons),
          SBC.mW,
          Text(
            iconDetail,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
