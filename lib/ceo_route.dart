import 'package:flutter/material.dart';
import 'ceo_util.dart';
import 'package:theceo/navBar.dart';
import 'package:theceo/bottomNavBar.dart';

class CeoRoute extends StatelessWidget {
  final String ceo;
  // ignore: use_key_in_widget_constructors
  const CeoRoute({ required this.ceo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The CEO'),
        
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.menu_book),
            // child: Text('Change ROute'),
            itemBuilder: (BuildContext context){
              return CeoUtil.menuItems.map((String item){
                return PopupMenuItem<String>(
                  child: Text(item),
                  value: item,);
              }).toList();
            },
            onSelected: (String value) => changeRoute(context, value),
          )
        ],
      ),
      drawer: const NavBar(),
      bottomNavigationBar: BottomNavBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(ceo),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

void changeRoute(BuildContext context, String menuItem){
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
    case CeoUtil.LAST:{
      image = CeoUtil.IMG_LAST;
      break;
    }
  }
  Navigator.push(context, MaterialPageRoute(
    builder: (context) => CeoRoute(ceo: image,)
    ),);
}
}
