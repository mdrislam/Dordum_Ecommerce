import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class Catagories extends StatefulWidget {
  const Catagories({
    Key? key,
  }) : super(key: key);

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  // List<Map<String, dynamic>> catagories = [
  //   {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
  //   {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
  //   {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
  //   {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
  //   {"icon": "assets/icons/Discover.svg", "text": "More"},
  // ];
  List catagories = [];

  @override
  void initState() {
    // TODO: implement initState
    fetchCatagories();
    super.initState();
  }

  // Fetching Data From Firebase
  fetchCatagories() async {
    QuerySnapshot qn =
        await FirebaseFirestore.instance.collection("Product_catagory").get();
    if (qn.docs.isNotEmpty) {
      catagories.clear();
      setState(() {
        for (int i = 0; i < qn.docs.length; i++) {
          catagories.add({
            "tblId": qn.docs[i]["tblId"],
            "name": qn.docs[i]["name"],
            "isHomeCat": qn.docs[i]["isHomeCat"],
            "photo": qn.docs[i]["photo"],
          });
          print(catagories[i]['photo']);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            catagories.length,
            (index) => CatagoriCard(
              press: () {},
              singleCat: catagories[index],
            ),
          ),
        ],
      ),
    );
  }
}

class CatagoriCard extends StatelessWidget {
  CatagoriCard({
    Key? key,
    required this.press,
    required this.singleCat,
  }) : super(key: key);

  final GestureTapCallback press;
  var singleCat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                    color: Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.network(singleCat["photo"]),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              singleCat["name"],
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
