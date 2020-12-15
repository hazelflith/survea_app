import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';
import 'package:survea_app/ui/widgets/appbar/home_appbar.dart';
import 'package:survea_app/ui/widgets/appbar/menu_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home>{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController controller;
  @override
  Widget build(BuildContext context) {
    UIHelper.init(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/image/home/bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
      drawer: MenuDrawer(),
      body: SafeArea(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: UIHelper.surveaBlue,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 15),
                child: HomeAppBar(scaffoldKey: _scaffoldKey),
              ),
            ),
          UIHelper.vSpaceSmall(),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          ),
          UIHelper.vSpaceMedium(),
          Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal : 20.0,vertical: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Good Morning',
                      style : Theme.of(context).textTheme.display1
                  ),
                      Text('Haris !',
                      style : Theme.of(context).textTheme.display1
                  ),
                ]),
              ),
          ),
            UIHelper.vSpaceXSmall(),
            _horizontalListView1(),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal : 20.0,vertical: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Your Wallet',
                          style : Theme.of(context).textTheme.display1
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: SizedBox(
                height: 150,
                child : Image(image: AssetImage('assets/image/home/wallet1.png'))
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal : 20.0,vertical: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Survey Recommendation',
                          style : Theme.of(context).textTheme.display1
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: SizedBox(
                  height: 150,
                  child : Image(image: AssetImage('assets/image/home/survey1.png'))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: SizedBox(
                  height: 150,
                  child : Image(image: AssetImage('assets/image/home/survey2.png'))
              ),
            ),
        ]),
      ),
    ));
  }
  Widget _horizontalListView1() {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.only(left:10.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Image(image: AssetImage('assets/image/home/box1.png')),
            Image(image: AssetImage('assets/image/home/box2.png')),
            Image(image: AssetImage('assets/image/home/box3.png'))
          ],
        ),
      ),
    );
  }
}
