import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';
import 'package:survea_app/ui/widgets/appbar/home_appbar.dart';
import 'package:survea_app/ui/widgets/appbar/menu_drawer.dart';

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
              child: ListView(children: <Widget>[
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
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 15.0, top: 5.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Available Survey',
                              style: Theme.of(context).textTheme.display1),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 15.0, left: 15.0, right: 18.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        labelText: 'Search',
                        border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, right: 15.0, bottom: 5.0, top: 0.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Category',
                              style: Theme.of(context).textTheme.display2),
                        ]),
                  ),
                ),
                _horizontalListView1(),
                Padding(
                  padding: const EdgeInsets.only(right: 0.0, bottom: 0.0),
                  child: SizedBox(
                      height: 150,
                      child: Image(
                          image:
                              AssetImage('assets/image/survey/survey1.png'))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: SizedBox(
                      height: 150,
                      child: Image(
                          image:
                              AssetImage('assets/image/survey/survey2.png'))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: SizedBox(
                      height: 150,
                      child: Image(
                          image:
                              AssetImage('assets/image/survey/survey3.png'))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: SizedBox(
                      height: 150,
                      child: Image(
                          image:
                              AssetImage('assets/image/survey/survey4.png'))),
                ),
              ]),
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
