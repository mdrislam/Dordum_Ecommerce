import 'package:dordum/screens/home/component/product_card.dart';
import 'package:dordum/screens/home/component/section_tittle.dart';
import 'package:dordum/screens/product_details/product_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTittle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(10, (index) => ProductCard(press: (){

                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => ProductDetailsScreen()));
              },)),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
