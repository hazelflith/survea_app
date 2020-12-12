import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kema_unpad/ui/ui_helper.dart';

class WebViewButton extends StatelessWidget {
  WebViewButton({this.image, this.label, this.onTap});

  final String image;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
          child: Center(
        child: Container(
          width: 70,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), 
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: SvgPicture.asset(
                  "$image",
                  semanticsLabel: 'Icon Pintas',
                  height: 40,
                  width: 40,
                ),
              ),
              UIHelper.vSpaceXSmall(),
              Text(
                "$label",
                style: Theme.of(context).textTheme.display1.copyWith(fontSize: 12.0),),
            ],
          ),
        ),
      ),
    );
  }
}

class WebViewButtonEx extends StatelessWidget {
  WebViewButtonEx({this.image, this.label, this.onTap});

  final String image;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
          child: Center(
        child: Container(
          width: 70,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), 
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Image.asset(
                  "$image",
                  height: 50,
                  width: 50,
                ),
              ),
              UIHelper.vSpaceXSmall(),
              Text(
                "$label",
                style: Theme.of(context).textTheme.display1.copyWith(fontSize: 12.0),),
            ],
          ),
        ),
      ),
    );
  }
}
