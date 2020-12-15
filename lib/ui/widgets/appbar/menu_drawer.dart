import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';

class MenuDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    UIHelper.init(context);
    Widget _buildDrawerOption(String title, IconData iconData, {VoidCallback onTap}) {
      return FlatButton(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(33),),
        child: Row(
          children: <Widget>[
            Icon(
              iconData,
              color: UIHelper.surveaGreen,
              size: 25,
            ),
            UIHelper.hSpaceSmall(),
            Text(
              title,
              style: _textTheme.display1.copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: UIHelper.surveaGreen),
            ),
          ],
        ),
        onPressed: onTap ?? () => Navigator.pop(context),
      );
    }
    Widget _buildDrawerSelected(String title, IconData iconData, {VoidCallback onTap}) {
      return FlatButton(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(33),),
        child: Row(
          children: <Widget>[
            Icon(
              iconData,
              color: Colors.white,
              size: 25,
            ),
            UIHelper.hSpaceSmall(),
            Text(
              title,
              style: _textTheme.display1.copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
            ),
          ],
        ),
        onPressed: onTap ?? () => Navigator.pop(context),
      );
    }
    Widget _buildDrawerLogout(String title, {VoidCallback onTap}) {
      return FlatButton(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(5),),
        child: Row(
          children: <Widget>[
            Text(
              title,
              style: _textTheme.display1.copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: UIHelper.surveaGreen),
            ),
            UIHelper.hSpaceSmall(),
          ],
        ),
        onPressed: onTap ?? () => Navigator.pop(context),
      );
    }
    return SafeArea(
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/image/menubar/bg.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
              children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                    child: Image(image: AssetImage('assets/image/menubar/pp.png')),
                  ),
                UIHelper.hSpaceSmall(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text(
                    'Haris Putratama',
                    style: _textTheme.display1.copyWith(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white,),
                  ),
                    UIHelper.vSpaceXSmall(),
                    Text(
                      'Rp. 160.500',
                      style: _textTheme.display1.copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: UIHelper.surveaGreen),
                    ),
                  ],
                )
                ]),
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              _buildDrawerOption(
                'Dashboard', Icons.home, onTap: () {
                  Navigator.pushNamed(context, "home");
                }
              ),
              _buildDrawerOption(
                'Survey List', Icons.list, onTap: () {
                  Navigator.pushNamed(context, 'survey_list');
                }),
              _buildDrawerOption(
                'My Survey', Icons.description, onTap: () {
                  Navigator.pushNamed(context, "my_survey");
                }
              ),
              _buildDrawerOption(
                  'Wallet', Icons.account_balance, onTap: () {
                Navigator.pushNamed(context, "wallet");
              }
              ),
              _buildDrawerOption(
                  'Data Marketplace', Icons.shopping_cart, onTap: () {
                Navigator.pushNamed(context, "data_marketplace");
              }
              ),
              _buildDrawerOption(
                  'Help & Feedback', Icons.thumb_up, onTap: () {
                Navigator.pushNamed(context, "help");
              }
              ),
              UIHelper.vSpaceXLarge(),UIHelper.vSpaceLarge(),
              Row(
                  children: <Widget>[
                _buildDrawerOption(
                    'Settings',Icons.settings, onTap: () {
                  Navigator.pushNamed(context, "setting");
                }
                ),
                    UIHelper.hSpaceSmall(),
                    Text(
                      '|',
                      style: _textTheme.display1.copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: UIHelper.surveaGreen),
                    ),
                _buildDrawerLogout(
                    'Logout', onTap: () {
                  Navigator.pushNamed(context, "logout");
                }
                ),

              ]),

            ],
          ),
        ),
      ),
    );
  }
}
