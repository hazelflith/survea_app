import 'package:flutter/material.dart';
import 'package:survea_app/ui/shared/custom_app_bar.dart';
import 'package:survea_app/ui/ui_helper.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      scaffoldKey: _scaffoldKey,
      alignment: MainAxisAlignment.spaceBetween,
      iconColor: UIHelper.surveaGreen,
      info: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            // UIHelper.vSpaceSmall(),
            Text("",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: UIHelper.surveaGreen,
                    fontSize: 24))
          ],
        ),
      ),
    );
  }
}
