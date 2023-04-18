import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sarpras/pages/activity_page.dart';
import 'package:sarpras/pages/category_page.dart';
import 'package:sarpras/pages/home_page.dart';
import 'package:sarpras/pages/profile_page.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {

  int selected_index = 0;

  List<TabItem> items = [
    TabItem(
      icon: IconlyLight.home,
      title: 'Home',
    ),
    TabItem(
      icon: IconlyLight.category,
      title: 'Category',
    ),
    TabItem(
      icon: IconlyLight.activity,
      title: 'Activity',
    ),
    TabItem(
      icon: IconlyLight.profile,
      title: 'Profile',
    ),
  ];

  List<Widget> _widgetOptions = [
    HomePage(),
    CategoryPage(),
    ActivityPage(),
    ProfilePage(),
  ];

  void _onItemTap(int index){
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 17,
                    spreadRadius: -5,
                    color: Colors.black.withOpacity(0.25)
                  )
                ]
              ),
                child: _widgetOptions.elementAt(selected_index)
            ),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            child: BottomBarDefault(
              items: items,
              backgroundColor: Color(0xFFf6f6f6).withOpacity(0.95),
              color: Color(0xFF968E8E),
              colorSelected: Color(0xFF496956),
              animated: true,
              boxShadow: [
                BoxShadow(
                  blurRadius: 30,
                  spreadRadius: -5,
                  color: Colors.black.withOpacity(0.25)
                )
              ],
              titleStyle: TextStyle(
                letterSpacing: 0,
                fontWeight: FontWeight.w500
              ),
              iconSize: 22,
              indexSelected: selected_index,
              onTap: _onItemTap,
            ),
          )
        ],
      ),
    );
  }
}
