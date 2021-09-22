import 'dart:ffi';

import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/profile/component/profile_menu.dart';
import 'package:dordum/screens/profile/component/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(
            height: 20,
          ),
          ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "My Account",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Bell.svg",
            text: "Notification",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Settings.svg",
            text: "Settings",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Question mark.svg",
            text: "Help Center",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "Log Out",
            press: () {},
          ),
        ],
      ),
    );
  }
}
