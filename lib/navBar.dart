// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:theceo/ceo_util.dart';
import 'package:theceo/ceo_route.dart';


class NavBar extends StatelessWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Codeincraft'), 
            accountEmail: const Text('codeincraft@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2019/06/30/14/42/ford-4308166_1280.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                ),
            ),
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1613591723536-65e664a9ebac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2NHx8fGVufDB8fHx8&auto=format&fit=crop&w=900&q=60'),
                  fit: BoxFit.cover,
                  ),
              ),
            ),
             ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => changeRout(context, CeoUtil.NUEL),
            ),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => changeRout(context, CeoUtil.ANTHONY),
            ),
             ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () => changeRout(context, CeoUtil.TEECEE),
            ),
            Divider(),
             ListTile(
              leading: Icon(Icons.request_page),
              title: Text(CeoUtil.NUEL),
              onTap: () => changeRout(context, CeoUtil.NUEL),
            ),
             ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Template'),
              onTap: () => changeRout(context, CeoUtil.NUEL),
            ),
            Divider(),
             ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () => changeRout(context, CeoUtil.NUEL),
            )
        ],
      ),
    );
  }
}

// changeRoute(BuildContext context, String nuel) {
  void changeRout(BuildContext context, String menuItem){
  String image = '';
  switch (menuItem){
    case CeoUtil.NUEL:{
      image = CeoUtil.IMG_NUEL;
      break;
    }
    case CeoUtil.ANTHONY:{
      image = CeoUtil.IMG_ANTHONY;
      break;
    }
    case CeoUtil.TEECEE:{
      image = CeoUtil.IMG_TEECEE;
      break;
    }
  }
  Navigator.push(context, MaterialPageRoute(
    builder: (context) => CeoRoute(ceo: image,)
    ),);
}
