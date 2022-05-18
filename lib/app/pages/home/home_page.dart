import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../routes/router.gr.dart';
import '../../resources/colors.dart';
import '../../resources/size_constants.dart';
import '../../resources/ui_assets.dart';
import '../../widgets/rounded_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real Estate',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.list),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.router.navigate(const SearchRouter());
            },
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
          //Icons.search,
          SBC.mW,
          IconButton(
            onPressed: () {
              context.router.navigate(const ProfileRouter());
            },
            icon: const Icon(Icons.account_circle_rounded),
            color: Colors.black,
          ),
          SBC.mW,
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const _MainCategoryView(),
              SBC.mH,
              const _HeadingBar(
                title: 'Popular',
                secondaryTitle: 'See all',
              ),
              SBC.lH,
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) {
                    return Row(
                      children: [
                        const _PopularChip(),
                        SBC.mW,
                      ],
                    );
                  }),
                ),
              ),
              SBC.lH,
              const _HeadingBar(
                title: 'Recommendation',
                secondaryTitle: 'See all',
              ),
              SBC.lH,
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(3, (index) {
                    return Row(
                      children: [
                        const _LowerBanner(),
                        SBC.mW,
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LowerBanner extends StatelessWidget {
  const _LowerBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          const _ChipImage(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Pool House',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: primaryColor),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [Icon(Icons.location_on), Text('Malibu')],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HeadingBar extends StatelessWidget {
  final String title;
  final String secondaryTitle;
  const _HeadingBar({
    required this.title,
    required this.secondaryTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              secondaryTitle,
              style: Theme.of(context).textTheme.caption,
            )),
      ],
    );
  }
}

class _PopularChip extends StatelessWidget {
  const _PopularChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey.withOpacity(0.9),
          width: 0.5,
        ),
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ChipImage(),
          SBC.lH,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Twin Villa',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SBC.mH,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                    ),
                    Text(
                      'Twin Villa',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                SBC.mH,
                Text(
                  '\$120k',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: primaryColor),
                ),
                SBC.lH,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ChipImage extends StatelessWidget {
  const _ChipImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://666159.smushcdn.com/1406590/wp-content/uploads/2019/08/1Villa-Solstice-Estepona-.jpg?size=1440x720&lossy=1&strip=1&webp=1',
          ),
        ),
        border: Border.all(
          color: Colors.grey.withOpacity(0.9),
          width: 0.5,
        ),
      ),
    );
  }
}

class _MainCategoryView extends StatelessWidget {
  const _MainCategoryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.xLH),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) {
            const titles = <String>['All', 'Villa', 'Shop', 'Building'];
            return _CategoryCard(
              index: index,
              categoryImageLink: 'category_img_$index.svg',
              categoryTitle: titles[index],
            );
          }),
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final int index;
  final String categoryImageLink;
  final String categoryTitle;
  const _CategoryCard({
    required this.index,
    required this.categoryImageLink,
    required this.categoryTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedIcon(
            iconSize: 40,
            contentPadding: 20,
            hasShadow: true,
            borderRadius: 5,
            child: SvgPicture.asset(
              UIAssets.getDummyImage(categoryImageLink),
            ),
            onPressed: () {
              // if (index == 0) {
              //   // context.router.push(CategoryRoute(categoryType: 'Car', title: 'Maruti Suzuki', description: 'Alto LX', backgroundImage: 'https://cdn-1.motorsport.com/images/amp/6n9yKwOY/s1000/ferrari-296-gt3-sketch-1.jpg'));
              // } else if (index == 1) {
              //   // context.router.push(CategoryRoute(categoryType: 'Bike', title: 'Harley Davidson', description: 'iron 883', backgroundImage:'https://www.harley-davidson.com/content/dam/h-d/images/product-images/bikes/motorcycle/2022/2022-iron-883/2022-iron-883-016/2022-iron-883-016-motorcycle.jpg',));
              // } else if (index == 2) {
              //   // context.router.push(CategoryRoute(categoryType: 'Scooter', title: 'TVS Ntorq', description: 'Marvel Edition', backgroundImage:'https://i.pinimg.com/564x/2d/30/50/2d3050b4afa0da6d778d554665692deb.jpg',));
              // } else {
              //   // context.router.push(CategoryRoute(categoryType: 'Electric', title: 'MG', description: 'Morris Garage', backgroundImage: 'https://mgmotors.com.np/admin/uploads/products/lyigh%20(1).jpg'));
              // }
            }),
        SBC.mH,
        Text(
          categoryTitle,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
