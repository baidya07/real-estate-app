import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:real_estate_app/routes/router.gr.dart';

import '../../resources/size_constants.dart';
import '../../widgets/cached_network_image_builder.dart';
import '../favorite_page/favorite_page.dart';

class CategoryPage extends StatelessWidget {
  final String? title;
  final String? description;
  final String? categoryType;
  final String? image;
  final String? backgroundImage;

  const CategoryPage(
      {Key? key,
        this.categoryType,
        this.description,
        this.title,
        this.image,
        this.backgroundImage,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CategoryAppbar(
        text: '$categoryType',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
           EdgeInsets.symmetric(horizontal: horizontalEdgePadding),
          child: MasonryGridView.count(
            padding: EdgeInsets.zero,
            crossAxisCount: 1,
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ResidenceItem(
                backgroundImage: backgroundImage!,
                // imageUrl: image, title: title, description: description, //'body_type_car_${index % 2}.png'
              );
            },
            // staggeredTileBuilder: (int index) => const StaggeredTile.fit(2),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 8.0,
          ),
        ),
      ),
    );
  }
}

class ResidenceItem extends StatelessWidget {
  final String backgroundImage;
  const ResidenceItem({
    required this.backgroundImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(SC.sH),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: (){
                  context.router.push(const HouseDetailRoute());
                },
                child: SizedBox(
                  height: 200,
                  width: 396,
                  child: CustomCachedNetworkImage(
                    '$backgroundImage',
                    fit: BoxFit.fitWidth,

                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(SC.mW),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(),
                    Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff596579),
                        ),
                        child: const Icon(
                          Icons.favorite_border_sharp,
                          color: Colors.white,
                        )),
                    SBC.mW,
                    Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff596579),
                        ),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ],
          ),
          SBC.lH,
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SBC.lW,
              Text(
                'Luxurious Bunglow on sale',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.grey),
              ),
              const Spacer(),
              Text(
                'Verified',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.green),
              ),
              SBC.lW,
            ],
          ),
          SBC.lH,
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SBC.lW,
              Text(
                'Rs 120,50000',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SBC.lW,
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: SC.mW, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Brand New',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white),
                ),
              )
            ],
          ),
          SBC.lH,
        ],
      ),
    );
  }
}

class CategoryAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const CategoryAppbar({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: InkWell(
        onTap: () {
          context.router.pop();
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 18,
        ),
      ),
      elevation: 0.2,
      titleSpacing: 0,
      title: Text(
        '$text',
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(fontWeight: FontWeight.w600),
      ),
      actions: [
        //todo: add search icon here

      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
