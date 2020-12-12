import 'package:flutter/material.dart';

import '../ui_helper.dart';

class JelajahKampusList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          JelajahKampusItem('Peta Unpad', 'peta_unpad', 'bg_peta_unpad.png',
              'Yuk Keliling Unpad!'),
          JelajahKampusItem('Fakultas', 'fakultas', 'bg_fakultas.png',
              'Informasi BEM Fakultas'),
          JelajahKampusItem('UKM', 'ukm', 'bg_ukm.png',
              'Tertarik ikut UKM?'),
        ],
      ),
    );
  }
}

class JelajahKampusItem extends StatelessWidget {
  final String itemName;
  final String route;
  final String image;
  final String description;

  JelajahKampusItem(this.itemName, this.route, this.image, this.description);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        //Container to create round corner and background color
        width: 200,
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 2.0, offset: Offset(0, 2))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Image
            Container(
                child: Image.asset(('images/' + image),
                    width: 210, height: 160, fit: BoxFit.contain),
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0)))),
            //Caption
            Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 8, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(itemName,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(description, style: TextStyle(fontSize: 14)),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
