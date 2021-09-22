import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';
class FavouriteBtn extends StatelessWidget {
  const FavouriteBtn({
    Key? key,
    this.isFavourite = false,
  }) : super(key: key);
  final bool isFavourite;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(15)),
        width: getProportionateScreenWidth(64),
        decoration: BoxDecoration(
            color: isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
        child: SvgPicture.asset(
          "assets/icons/Heart Icon_2.svg",
          color: isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
        ),
      ),
    );
  }
}