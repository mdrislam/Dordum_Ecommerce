import 'package:dordum/screens/home/component/home_body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HomeBody(),
    );
  }
}
