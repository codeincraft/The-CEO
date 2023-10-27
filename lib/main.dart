import 'package:flutter/material.dart';
import 'package:theceo/ceo_route.dart';
import 'package:theceo/ceo_util.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The CEO',
      theme: ThemeData(
       
        primarySwatch: Colors.red,
      ),
      home: const CeoRoute(ceo: CeoUtil.IMG_NUEL,),
    );
  }
}

