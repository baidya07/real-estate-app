import 'package:flutter/material.dart';

import 'buttons.dart';

class OrderSuccessCard extends StatelessWidget {
  OrderSuccessCard({Key? key}) : super(key: key);
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
            margin: const EdgeInsets.symmetric(horizontal: 20),
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
                      'Awesome !',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      'Your order has been confirmed.',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.apply(fontWeightDelta: 2),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: PrimaryButton(
                          onPressed: () {},
                          title: 'ORDER HISTORY',
                          width: 150,
                          radius: 0,
                          height: 35,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: PrimaryButton(
                          onPressed: () {},
                          title: 'KEEP SHOPPING',
                          width: 150,
                          radius: 0,
                          height: 35,
                        ),
                      ),
                    ],
                  ),
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
