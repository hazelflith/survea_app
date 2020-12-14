import 'package:flutter/material.dart';
import '../ui_helper.dart';

class SurveyCatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 20),
          SurveyCatItem('peta_unpad', 'cat_health.png'),
          SurveyCatItem('fakultas', 'cat_health.png'),
          SurveyCatItem('ukm', 'cat_health.png'),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}

class SurveyCatItem extends StatelessWidget {
  final String route;
  final String image;

  SurveyCatItem(this.route, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        //Container to create round corner and background color
        width: 200,
        margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
        // decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(15.0),
        //     boxShadow: [
        //       BoxShadow(
        //           color: Colors.grey, blurRadius: 2.0, offset: Offset(0, 2))
        //     ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Image
            Container(
                child: Image.asset(('image/survey/' + image),
                    width: 210, height: 160, fit: BoxFit.contain),
                decoration: BoxDecoration(
                    color: UIHelper.surveaGreen,
                    borderRadius: BorderRadius.circular(15.0))),
          ],
        ),
      ),
    );
  }
}
