import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({this.scaffoldKey, this.info, this.alignment});
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Widget info;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: <Widget>[
        GestureDetector(
          onTap: () => scaffoldKey.currentState.openDrawer(),
          child: Icon(
            Icons.short_text,
            size: 50.0,
          ),
        ),
        info
      ],
    );
  }
}
