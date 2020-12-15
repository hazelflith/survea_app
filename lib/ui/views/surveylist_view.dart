import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';
import 'package:survea_app/ui/widgets/appbar/home_appbar.dart';
import 'package:survea_app/ui/widgets/appbar/menu_drawer.dart';
import 'package:survea_app/ui/widgets/surveycat_list.dart';

class SurveyList extends StatefulWidget {
  @override
  _SurveyListState createState() => _SurveyListState();
}

class _SurveyListState extends State<SurveyList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController controller;

  @override
  Widget build(BuildContext context) {
    UIHelper.init(context);
    return Scaffold(
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
            UIHelper.vSpaceMedium(),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Available Survey',
                          style: Theme.of(context).textTheme.display1),
                    ]),
              ),
            ),
            _horizontalListView1(),
          ],
        )));
  }

  Widget _horizontalListView1() {
    return SizedBox(
      height: 75,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Image(image: AssetImage('assets/image/survey/cat_culinary.png')),
            Image(image: AssetImage('assets/image/survey/cat_health.png')),
            Image(image: AssetImage('assets/image/survey/cat_politic.png')),
            Image(image: AssetImage('assets/image/survey/cat_social.png')),
            Image(image: AssetImage('assets/image/survey/cat_tech.png'))
          ],
        ),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 390.0 - 240);
    path.quadraticBezierTo(size.width / 2, 220, size.width, 390.0 - 240);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
