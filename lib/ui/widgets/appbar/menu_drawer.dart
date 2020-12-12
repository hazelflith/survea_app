import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';

class MenuDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    UIHelper.init(context);
    Widget _buildDrawerOption(String title, IconData iconData, {VoidCallback onTap}) {
      return FlatButton(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(70),),
        child: Row(
          children: <Widget>[
            Icon(
              iconData,
              color: Colors.white,
              size: 30,
            ),
            UIHelper.hSpaceSmall(),
            Text(
              title,
              style: _textTheme.display1.copyWith(fontSize: 14.0, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        onPressed: onTap ?? () => Navigator.pop(context),
      );
    }

    return SafeArea(
      child: Drawer(
        child: Container(
          color: UIHelper.blue,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenHeight(250),
              ),
              _buildDrawerOption(
                'Home', Icons.home, onTap: () {
                  Navigator.pushNamed(context, "home");
                }
              ),
              _buildDrawerOption(
                'Kontak Kami', Icons.account_circle, onTap: () {
                  Navigator.pushNamed(context, 'kontak');
                }),
              _buildDrawerOption(
                'Tentang', Icons.smartphone, onTap: () {
                  Navigator.pushNamed(context, "tentang");
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
