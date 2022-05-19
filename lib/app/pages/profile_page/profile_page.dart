import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/app/resources/colors.dart';

import '../../resources/size_constants.dart';


const horizontalEdgePadding = 15.0;
const  verticalEdgePadding = 20.0;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            context.router.pop();
            },
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              size: 14, color: Colors.black),
        ),
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: horizontalEdgePadding,
                    vertical: verticalEdgePadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const CircleAvatar(
                              backgroundColor: primaryColor,
                              child: Icon(Icons.person),
                              maxRadius: 25,
                              minRadius: 25,
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kritika Subba',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                SBC.sH,
                                Text('98XXXXXXXX'),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: primaryColor),
                              onPressed: () {},
                              child: const Text(
                                'Edit',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 2.5,
            ),
            const ProfileCart(
              iconPic: Icon(Icons.notifications_outlined),
              title: 'Notifications',
            ),
            const SizedBox(
              height: 2.5,
            ),
            const ProfileCart(
              iconPic: Icon(Icons.person),
              title: 'About Us',
            ),
            const SizedBox(
              height: 2.5,
            ),
            const ProfileCart(
              iconPic: Icon(Icons.help_center_outlined),
              title: 'Help & Support',
            ),
            const SizedBox(
              height: 2.5,
            ),
            const ProfileCart(
              iconPic: Icon(Icons.settings_outlined),
              title: 'Setting',
            ),
            const SizedBox(
              height: 2.5,
            ),
            const ProfileCart(
              iconPic: Icon(Icons.logout_outlined),
              title: 'Log out',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCart extends StatelessWidget {
  final String title;
  final Icon iconPic;

  const ProfileCart({
    required this.title,
    required this.iconPic,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalEdgePadding, vertical: verticalEdgePadding),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                iconPic,
                const SizedBox(
                  width: 10,
                ),
                Text(title),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
