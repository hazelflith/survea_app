import 'package:flutter/material.dart';
import 'package:survea_app/ui/shared/custom_app_bar.dart';
import 'package:survea_app/ui/ui_helper.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey, super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      scaffoldKey: _scaffoldKey,
      alignment: MainAxisAlignment.spaceBetween,
      info: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              UIHelper.vSpaceSmall(),
              Text(
                "Selamat Datang",
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                "Kema!",
                style: Theme.of(context).textTheme.display2,
              )
            ],
          ),
          Column(
            children: <Widget>[
              UIHelper.vSpaceXSmall(),
              UIHelper.vSpaceXSmall(),
              Image.asset(
                "images/logo_kumobile.png",
                width: 45.0,
                height: 45.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}