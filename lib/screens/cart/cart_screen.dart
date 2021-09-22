import 'package:dordum/components/default_button.dart';
import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/cart/component/cart_body.dart';
import 'package:dordum/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/cheakoutcard.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CartBody(),
      bottomNavigationBar: CheakOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "4 Item",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}


