import 'package:survea_app/ui/ui_helper.dart';
import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  SocialMedia({this.image, this.label});
  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          image,
          height: 20.0,
          width: 20.0,
        ),
        UIHelper.hSpaceXSmall(),
        Text(
          label,
          style: Theme.of(context).textTheme.display2,
        )
      ],
    );
  }
}
