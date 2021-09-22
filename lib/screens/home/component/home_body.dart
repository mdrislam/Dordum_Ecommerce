import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/home/component/catagories.dart';
import 'package:dordum/screens/home/component/home_header.dart';
import 'package:dordum/screens/home/component/popular_product.dart';
import 'package:dordum/screens/home/component/product_card.dart';
import 'package:dordum/screens/home/component/search_field.dart';
import 'package:dordum/screens/home/component/section_tittle.dart';
import 'package:dordum/screens/home/component/special_offer.dart';
import 'package:dordum/screens/product_details/product_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';
import 'discount_banner.dart';
import 'icon_button_with_counter.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          HomeHeader(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          DiscountBanner(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          Catagories(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          SpecialOffers(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          PopularProduct(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          Column(
            children: [
              SectionTittle(
                text: "Top Rated Product",
                press: () {},
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        10,
                        (index) => ProductCard(press: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (_) => ProductDetailsScreen()));
                            })),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
