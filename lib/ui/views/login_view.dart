import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Welcome to Flutter',
        home: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topLeft,
                  image: AssetImage('assets/image/login/bg.png'),
                  fit: BoxFit.scaleDown),
    ),
                  foregroundDecoration: const BoxDecoration(
                  image: DecorationImage(
                  alignment: Alignment(0, .35),
                  image: AssetImage(
                  'assets/image/login/waves.png'),
                  ),
            ),
            child: Text('Welcome',
                style : TextStyle(fontSize:28.0, fontWeight:FontWeight.normal ,color: Colors.black87))


        )
        );
    }
  }

