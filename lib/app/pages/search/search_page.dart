import 'package:flutter/material.dart';
import 'package:real_estate_app/app/pages/search/detail.dart';
import 'package:real_estate_app/app/resources/colors.dart';
import 'package:real_estate_app/app/resources/size_constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: "Search",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: SC.sH, horizontal: SC.edgeGap),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 245, 245),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(children: [
                  SBC.mW,
                  const Icon(Icons.search),
                  SBC.sW,
                  Text(
                    "Search...",
                    style: Theme.of(context).textTheme.caption,
                  )
                ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const _CardCategory(),
              const _RecommendationSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const _BottomNavigationBar(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.black)),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        if (value == 0) {}

        if (value == 1) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SearchPage()));
        }
      },
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourite'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined), label: 'Profile'),
      ],
      selectedItemColor: Colors.orange,
    );
  }
}

class _RecommendationSection extends StatelessWidget {
  const _RecommendationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommendation",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const _CategorySale(
                  rooms: "5 rooms",
                  floor: "2 floor",
                  price: "IDR. 900.000.000,-",
                  imageUrl:
                      "https://www.homestratosphere.com/wp-content/uploads/2018/02/single-family-detached-home.jpg"),
              SBC.xXlW,
              const _CategorySale(
                  rooms: "3 rooms",
                  floor: "1 floor",
                  price: "IDR. 400.000.000,-",
                  imageUrl:
                      "https://www.manoramaonline.com/content/dam/mm/mo/homestyle/dream-home/images/2022/4/19/koyilandi-home.jpg"),
              SBC.xXlW,
              const _CategorySale(
                  rooms: "6 rooms",
                  floor: "2 floor",
                  price: "IDR. 400.000.000,-",
                  imageUrl:
                      "https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img/https://thompsongas.com/wp-content/uploads/2020/09/Home.jpg"),
              SBC.xXlW,
              const _CategorySale(
                  rooms: "6 rooms",
                  floor: "2 floor",
                  price: "IDR. 400.000.000,-",
                  imageUrl:
                      "https://mhiresources.com/read/mhiimages/news/dc2c2fb1-49b2-4e4e-8d49-2cf4ed304b40.jpg"),
              SBC.xXlW,
              const _CategorySale(
                  rooms: "6 rooms",
                  floor: "2 floor",
                  price: "IDR. 400.000.000,-",
                  imageUrl: "https://www.communitybank.tv/images/House_4.jpg")
            ],
          ),
        )
      ],
    );
  }
}

class _CardCategory extends StatelessWidget {
  const _CardCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        const _CategoryChip(
            title: "Resort",
            houseImage:
                "https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-23.jpg"),
        SBC.lW,
        const _CategoryChip(
            title: "CottageCottage",
            houseImage:
                "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/smith-november-2020-1623338178.jpg?crop=1xw:1xh;center,top&resize=480:*"),
        SBC.lH,
        const _CategoryChip(
            title: "Office",
            houseImage:
                "https://www.lakecountyil.gov/ImageRepository/Document?documentID=1259"),
        SBC.lW,
        const _CategoryChip(
            title: "Urban",
            houseImage:
                "https://www.architecturalrecord.com/ext/resources/Issues/2021/02-February/Golden-Valley-Midcentury-Modern-House-01-B.jpg?1611944303")
      ],
    );
  }
}

class _CategorySale extends StatelessWidget {
  final String rooms;
  final String floor;
  final String price;
  final String imageUrl;
  const _CategorySale(
      {Key? key,
      required this.rooms,
      required this.floor,
      required this.price,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HouseDetail()));
      },
      child: Container(
        width: 200,
        height: 280,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 250, 250, 250),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SBC.xxLH,
              Container(
                height: 160,
                width: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(imageUrl)),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
              ),
              SBC.xLH,
              Container(
                height: 34,
                width: 90,
                decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    "FOR SALE",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SBC.lH,
              Text(price,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.w600)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    rooms,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: const Color.fromARGB(255, 122, 122, 122)),
                  ),
                  SBC.sW,
                  const Icon(
                    Icons.circle,
                    size: 4,
                    color: Color.fromARGB(255, 167, 166, 166),
                  ),
                  SBC.sW,
                  Text(
                    floor,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: const Color.fromARGB(255, 122, 122, 122)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String title;
  final String houseImage;
  const _CategoryChip({Key? key, required this.title, required this.houseImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 18),
      child: Container(
          height: 70,
          width: 160,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 245, 245),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SBC.sW,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SBC.mW,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                child: AspectRatio(
                  aspectRatio: 0.9,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(houseImage),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
