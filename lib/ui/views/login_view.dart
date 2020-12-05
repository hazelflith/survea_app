import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Welcome to Flutter',
        home: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 692,
              width: 375,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/image/login/bg.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            )

          ],),
      );
    }
  }

