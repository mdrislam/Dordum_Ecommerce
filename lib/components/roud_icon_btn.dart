import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: Colors.white,
          child: Icon(iconData),
          onPressed: press
          // Navigator.of(context).pop();

          ),
    );
  }
}
