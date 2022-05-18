
import 'package:flutter/material.dart';

import 'buttons.dart';

class RegisterSuccessCard extends StatelessWidget {
  RegisterSuccessCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Center(
          child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'Account Created',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      'New Store Registered Successfully.',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.apply(fontWeightDelta: 2),
                    ),
                  ),
                  PrimaryButton(
                    onPressed: () {},
                    title: 'REDIRECT TO LOGIN',
                  )
                ],
              ),
            ),
            height: 200,
            width: double.infinity,
          ),
          const Positioned(
              top: -33,
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 70,
              )),
        ],
      )),
    );
  }
}
