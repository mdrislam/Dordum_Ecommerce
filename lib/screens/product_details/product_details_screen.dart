import 'package:dordum/components/roud_icon_btn.dart';
import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/product_details/component/details_body.dart';
import 'package:dordum/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/custom_app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(
          rating: 4.4,
        ),
      ),
      body: DetailsBody(),
    );
  }
}


