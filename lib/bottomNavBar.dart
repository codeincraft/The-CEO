// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:theceo/ceo_util.dart';
import 'package:theceo/navBar.dart';


// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return  NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.red.shade100,
        labelTextStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 14, fontWeight: FontWeight.bold ),
        )
      ),
      child: NavigationBar(
        height: 60,
        backgroundColor: Color(0xFFf1f5fb),
        selectedIndex: _index,
        onDestinationSelected: (value){
          String _artist = CeoUtil.menuItems[value];
          _index = value;
          changeRout(context, _artist);
        },
        
       destinations: [
         NavigationDestination(
           icon: Icon(Icons.home), 
           label: 'home'),
         NavigationDestination(
           icon: Icon(Icons.settings), 
           label: 'Settings'),
         NavigationDestination(
           icon: Icon(Icons.menu), 
           label: 'Transaction'),
         NavigationDestination(
           icon: Icon(Icons.verified_user), 
           label: 'Profile'),
        
       ],
      ),
    );
  }
}