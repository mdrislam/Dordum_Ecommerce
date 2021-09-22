import 'package:dordum/components/roud_icon_btn.dart';
import 'package:dordum/const/AppConstant.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedcolor = 0;
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
              4,
                  (index) =>
                  ColorDot(
                    color: Colors.red,
                    isSelected: selectedcolor == index,
                  )),
          Spacer(),
          RoundIconButton(iconData: Icons.remove, press: () {}),
          SizedBox(width: getProportionateScreenWidth(15)),
          RoundIconButton(iconData: Icons.add, press: () {}),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  //final product
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        //color: Colors.redAccent
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected
                  ? AppColorsConst.dPrimaryColor
                  : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}