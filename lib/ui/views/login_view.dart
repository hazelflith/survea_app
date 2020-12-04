import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Welcome to Flutter',
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/background_login.png"), fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text('My App'),
              centerTitle: true,
              leading: IconButton(
                  icon: Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            ),
          ),
        ),
      );
    }
  }

