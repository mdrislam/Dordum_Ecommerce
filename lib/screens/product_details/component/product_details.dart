import 'package:dordum/const/AppConstant.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'details_body.dart';
import 'favourite_btn.dart';
class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
    required this.pressOnSeeMore,
  }) : super(key: key);

  //ProductObj
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            "Wireless Controller for PS4",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        FavouriteBtn(
          isFavourite: true,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64)),
          child: Text(
            "Song Name: Bheja Bheja Chokh\nVocal: Tanjib Sarowar\nTune & Music: Sajid Sarker\nLyricist: Someshwar Oli\nDrama: Ghure Daranor Golpo\nVideo Direction: Mizanur Rahman Aryan\nCast: Afran Nisho & Mehazabien\nLabel: Gaanchill Music",
            maxLines: 4,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20), vertical: 10),
          child: GestureDetector(
            onTap: pressOnSeeMore,
            child: Row(
              children: [
                Text(
                  "See More Details",
                  style: TextStyle(
                      color: AppColorsConst.dPrimaryColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: AppColorsConst.dPrimaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}