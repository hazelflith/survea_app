import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';
import 'package:survea_app/ui/widgets/appbar/home_appbar.dart';
import 'package:survea_app/ui/widgets/appbar/menu_drawer.dart';

class SurveyCreate extends StatefulWidget {
  @override
  _SurveyCreateState createState() => _SurveyCreateState();
}

class _SurveyCreateState extends State<SurveyCreate> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController controller;

  @override
  Widget build(BuildContext context) {
    UIHelper.init(context);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/home/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            drawer: MenuDrawer(),
            key: _scaffoldKey,
            body: SafeArea(
                child: ListView(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/home/bg.png'),
                    fit: BoxFit.fill,
                  ),
                )),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/menubar/app_bar.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 15),
                    child: HomeAppBar(scaffoldKey: _scaffoldKey),
                  ),
                ),
                UIHelper.vSpaceSmall(),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Create Survey',
                              style: Theme.of(context).textTheme.display1),
                        ]),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 0.0),
                      labelText: 'Username'),
                ),
              ],
            ))));
  }
}
