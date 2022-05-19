import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_app/app/widgets/circular_avatar.dart';
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
        elevation: 0.2,
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
                  children: List.generate(5, (index) {
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
    return InkWell(
      onTap: (){
        context.router.navigate(const HouseDetailRoute());
      },
      child: SizedBox(
        height: 160,
        child: Stack(
          children: [
            const CircularAvatar(imageUrl: 'https://e8rbh6por3n.exactdn.com/sites/uploads/2020/05/villa-la-gi-thumbnail.jpg?strip=all&lossy=1&ssl=1', borderRadius: 15.0),
            // const _ChipImage(),
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
                    children: [
                      const Icon(Icons.location_on),
                      Text('Malibu',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
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
    return InkWell(
      onTap: (){
        context.router.navigate(const HouseDetailRoute());
      },
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 247, 245, 245),
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(
            color: Colors.grey.withOpacity(0.9),
            width: 0.1,
          ),
        ),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _ChipImage(),
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
      height: 165,
      width: 330,
          child: const CircularAvatar(
            borderRadius: 18.0,
            imageUrl: 'https://666159.smushcdn.com/1406590/wp-content/uploads/2019/08/1Villa-Solstice-Estepona-.jpg?size=1440x720&lossy=1&strip=1&webp=1',
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
    return Container(
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
            iconSize: 30,
            contentPadding: 20,
            hasShadow: true,
            borderRadius: 5,
            child: SvgPicture.asset(
              UIAssets.getDummyImage(categoryImageLink),
            ),
            onPressed: () {
              if (index == 0) {
                context.router.push(CategoryRoute(categoryType: 'All Categories', title: 'Mansion', description: 'Bunglow', backgroundImage: 'https://i.pinimg.com/originals/7f/59/9f/7f599f37422ba74e57c5045721a47aa6.jpg'));
              } else if (index == 1) {
                context.router.push(CategoryRoute(categoryType: 'Villa', title: 'Mansion', description: 'Bunglow', backgroundImage: 'https://www.gannett-cdn.com/presto/2019/12/09/PDEM/5d630673-80e4-40ec-a6b4-d41112b9f0a3-1.jpg?crop=1702,957,x171,y85&width=1702&height=957&format=pjpg&auto=webp'));
              } else if (index == 2) {
                context.router.push(CategoryRoute(categoryType: 'Shop', title: 'Addidas', description: 'Footwear', backgroundImage: 'https://thumbs.dreamstime.com/b/front-entrance-to-adidas-store-singapore-shopping-mall-mar-176840861.jpg'));
              } else {
                context.router.push(CategoryRoute(categoryType: 'Building', title: 'World Atlas', description: 'Most famous building', backgroundImage: 'https://www.worldatlas.com/r/w1200/upload/65/fa/8c/shutterstock-789412159.jpg'));
              }
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
