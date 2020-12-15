import 'package:flutter/material.dart';
import 'package:survea_app/ui/widgets/appbar/menu_drawer.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({this.scaffoldKey, this.info, this.iconColor, this.alignment});
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Widget info;
  final Color iconColor;
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
            color: iconColor,
          ),
        ),
        info,
        GestureDetector(
          // onTap: () => scaffoldKey.currentState.openDrawer(),
          child: Icon(
            Icons.notifications,
            size: 30.0,
            color: iconColor,
          ),
        )
      ],
    );
  }
}
