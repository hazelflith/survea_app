import 'package:flutter/material.dart';
import 'package:kema_unpad/core/models/post.dart';
import 'package:kema_unpad/ui/shared/link_webview.dart';
import 'package:kema_unpad/ui/ui_helper.dart';

class PostCard extends StatelessWidget {
  PostCard({this.label, this.image, this.beritaTerbaru, this.link});
  final Post beritaTerbaru;
  final String link;
  final String label;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => LinkWebView(
              initialUrl: link,
            ),
          ),
        );
      },
      child: Container(
        width: UIHelper.screenWidth * 0.55,
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
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: Image.network(
                image,
                fit: BoxFit.fill,
                height: getProportionateScreenHeight(175),
                width: UIHelper.screenWidth * 0.91,
              ),
            ),
            UIHelper.vSpaceXSmall(),
            Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      label,
                      style: Theme.of(context)
                          .textTheme
                          .display2
                          .copyWith(fontSize: 12.0),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
