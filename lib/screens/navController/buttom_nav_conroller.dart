import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/favourite/favourite_screen.dart';
import 'package:dordum/screens/home/home_screen.dart';
import 'package:dordum/screens/message/message_screen.dart';
import 'package:dordum/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;
  final _pages = [
    HomeScreen(),
    FavouriteScreen(),
    MessageScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _currentIndex,
          color: AppColorsConst.dPrimaryColor.withOpacity(0.10),
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          animationDuration: Duration(milliseconds: 600),
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(Icons.favorite_border_outlined, size: 30),
            Icon(Icons.message, size: 30),
            Icon(Icons.person_rounded, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: _pages[_currentIndex],
      ),
    );
  }

  // Scaffold buildScaffold() {
  //   return Scaffold(
  //
  //
  //   bottomNavigationBar: BottomNavigationBar(
  //     elevation: 5,
  //     currentIndex: _currentIndex,
  //     selectedItemColor: Colors.white,
  //     unselectedItemColor: Colors.grey,
  //     selectedLabelStyle: TextStyle(
  //       color: Colors.white,
  //       fontWeight: FontWeight.bold,
  //     ),
  //     items: [
  //       BottomNavigationBarItem(
  //           icon: Icon(Icons.home),
  //           title: Text("Home"),
  //           backgroundColor: AppColorsConst.dPrimaryColor),
  //       BottomNavigationBarItem(
  //           icon: Icon(Icons.favorite_border_outlined),
  //           title: Text("Favourite"),
  //           backgroundColor: AppColorsConst.dPrimaryColor),
  //       BottomNavigationBarItem(
  //           icon: Icon(Icons.message),
  //           title: Text("Cart"),
  //           backgroundColor: AppColorsConst.dPrimaryColor),
  //       BottomNavigationBarItem(
  //           icon: Icon(Icons.person),
  //           title: Text("Profile"),
  //           backgroundColor: AppColorsConst.dPrimaryColor),
  //     ],
  //     onTap: (index) {
  //       setState(() {
  //         _currentIndex = index;
  //       });
  //     },
  //   ),
  //   body: _pages[_currentIndex],
  // );
  // }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }
}
