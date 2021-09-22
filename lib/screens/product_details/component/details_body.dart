import 'package:dordum/components/default_button.dart';
import 'package:dordum/components/roud_icon_btn.dart';
import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/product_details/component/product_details.dart';
import 'package:dordum/screens/product_details/component/product_images_card.dart';
import 'package:dordum/screens/product_details/component/top_round_containner.dart';
import 'package:dordum/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'color_dots.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ProductImagesCard(),
          TopRoundContainer(
            color: Colors.white,
            child: ProductDetails(
              pressOnSeeMore: () {},
            ),
          ),
          TopRoundContainer(
            color: Color(0xFFF6F7F9),
            child: Column(
              children: [
                ColorDots(),
                TopRoundContainer(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth! * 0.15,
                          right: SizeConfig.screenWidth! * 0.15,
                          top: getProportionateScreenWidth(15),
                          bottom: getProportionateScreenWidth(25)),
                      child: DefaultButton(
                        text: "Add to Cart",
                        press: () {},
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
