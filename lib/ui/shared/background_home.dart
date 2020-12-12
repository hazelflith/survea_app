import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';

class BackgroundHome extends StatelessWidget {
  BackgroundHome({this.child, this.image});
  final Widget child;
  final String image;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
        width: UIHelper.screenWidth,
        height: UIHelper.screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )
        ),
      ),
      child,
      ],
    );
  }
}