import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:survea_app/ui/router.dart';
import 'package:survea_app/ui/ui_helper.dart';
import 'package:survea_app/ui/views/all_views.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Survea',
      onGenerateRoute: Router.generateRoute,
      theme: ThemeData(
        primarySwatch: UIHelper.createMaterialColor(UIHelper.blue),
        appBarTheme: AppBarTheme(
          textTheme: globalTextTheme,
        ),
        textTheme: globalTextTheme,
      ),
      home: Login(),
    );
  }
}

final globalTextTheme = TextTheme(
  display2: TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black),
  display1: TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),
  title: TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),
);
