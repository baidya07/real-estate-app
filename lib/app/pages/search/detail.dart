import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/app/resources/colors.dart';
import 'package:real_estate_app/app/widgets/buttons.dart';
import 'package:real_estate_app/app/widgets/cached_network_image_builder.dart';

import '../../resources/size_constants.dart';

final imagesUrl = [
  "https://www.homestratosphere.com/wp-content/uploads/2018/02/single-family-detached-home.jpg",
  "https://images.unsplash.com/photo-1568605114967-8130f3a36994?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
  "https://mhiresources.com/read/mhiimages/websitehomepageslider/513130_gruenehavenspc2fmfreeport.jpg"
];
final _totalDots = imagesUrl.length;
int _currentPosition = 0;

class HouseDetailPage extends StatefulWidget {
  const HouseDetailPage({Key? key}) : super(key: key);

  @override
  State<HouseDetailPage> createState() => _HouseDetailPageState();
}

class _HouseDetailPageState extends State<HouseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Detail",
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.black),
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
          children: [
            imageSlider(),
            const _HouseDescription(),
          ],
        ),
      ),
      bottomNavigationBar: const _BottomNav(),
    );
  }

  Column imageSlider() {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 3),
            onPageChanged: (index, reason) =>
                setState(() => _currentPosition = index),
          ),
          itemCount: _totalDots,
          itemBuilder: (context, index, realIndex) {
            final urlImage = imagesUrl[index];
            return buildImage(urlImage, index);
          },
        ),
        Center(
          child: DotsIndicator(
            dotsCount: imagesUrl.length,
            position: _currentPosition.toDouble(),
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

  Widget buildImage(String urlImage, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: CustomCachedNetworkImage(
        urlImage,
        fit: BoxFit.cover,
        aspectRatio: 4,
        // width: MediaQuery.of(context).size.width,
      ));
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
          padding:
              const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.lH),
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
            ],
          ),
        ),
      ],
    );
  }
}

class _BottomNav extends StatelessWidget {
  const _BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 166, 165, 165)),
                  borderRadius: BorderRadius.circular(4)),
              child: GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.favorite,
                    size: 33,
                  ),
                ),
              )),
          PrimaryButton(
            onPressed: () {},
            title: "BUY NOW",
            width: 200,
          ),
        ],
      ),
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
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: const Color.fromARGB(255, 122, 122, 122),
                ),
            textAlign: TextAlign.justify,
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
