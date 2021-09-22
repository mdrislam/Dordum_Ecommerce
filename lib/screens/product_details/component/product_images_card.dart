import 'package:dordum/const/AppConstant.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ProductImagesCard extends StatefulWidget {
  const ProductImagesCard({
    Key? key,
  }) : super(key: key);

  @override
  _ProductImagesCardState createState() => _ProductImagesCardState();
}

class _ProductImagesCardState extends State<ProductImagesCard> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset("assets/images/ps4_console_white_1.png"),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [...List.generate(7, (index) => SmallImagesPreview(index))],
            ),
          ),
        )
      ],
    );
  }

  GestureDetector SmallImagesPreview(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedImage = index;
          //Change Images State here
        });


      },

      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectedImage == index
                    ? AppColorsConst.dPrimaryColor
                    : Colors.transparent)),
        child: Image.asset("assets/images/ps4_console_white_1.png"),
      ),
    );
  }
}
