import 'package:dordum/const/AppConstant.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset("assets/images/ps4_console_white_1.png"),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wireless Controller for PS4",
              maxLines: 2,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                text: "1000 \\-",
                style: TextStyle(color: AppColorsConst.dPrimaryColor),
                children: [
                  TextSpan(
                    text: " x 2",
                    style: TextStyle(color: AppColorsConst.dTextColor),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
