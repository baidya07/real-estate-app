import 'package:flutter/material.dart';
import 'package:real_estate_app/app/resources/size_constants.dart';

const horizontalEdgePadding = 10.0;
const verticalEdgePadding = 15.0;

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Favorite',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.black)),
      ),
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(4, (index) {
                return Column(
                  children: [
                    SBC.sH,
                    const _ProductWishlist(),
                    SBC.sH,
                  ],
                );
              })),
        ),
      ),
    );
  }
}

class _ProductWishlist extends StatelessWidget {
  const _ProductWishlist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalEdgePadding, vertical: verticalEdgePadding),
        // ignore: avoid_unnecessary_containers
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.asset(
                'assets/images/dummy_images/house1_image.jpg',
                height: 75,
              ),
            ),
            // Expanded(
            //   child: Image.asset(
            //     'assets/images/dummy_images/house1_image.jpg',
            //     height: 75,
            //   ),
            // ),
            SBC.lW,
            Expanded(
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Penthouse Devilia',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  SBC.sH,
                  const Text('Kathmandu, Nepal'),
                  SBC.sH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs. 50,000,-',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontWeight: FontWeight.w500)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.favorite_outline,
                                size: 20,
                              )),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.delete_outline,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
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