import 'package:dordum/screens/cart/cart_screen.dart';
import 'package:dordum/screens/home/component/search_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconbtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => CartScreen()));
            },
          ),
          IconbtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
