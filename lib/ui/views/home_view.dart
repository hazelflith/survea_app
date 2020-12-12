import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';
import 'package:survea_app/ui/shared/link_webview.dart';
import 'package:survea_app/ui/widgets/jelajahkampus_list.dart';
import 'package:survea_app/ui/widgets/post/post_list.dart';
import 'package:survea_app/ui/widgets/appbar/home_appbar.dart';
import 'package:survea_app/ui/widgets/appbar/menu_drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UIHelper.init(context);
    return Scaffold(
      drawer: MenuDrawer(),
      key: _scaffoldKey,
      body: SafeArea(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UIHelper.vSpaceSmall(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: HomeAppBar(scaffoldKey: _scaffoldKey),
            ),
            UIHelper.vSpaceMedium(),
            Container(
              width: UIHelper.screenWidth * 0.91,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: 250.0,
              decoration: BoxDecoration(
                color: UIHelper.blue,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            UIHelper.vSpaceMedium(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Jelajah Kampus",
                      style: Theme.of(context).textTheme.title),
                  Icon(Icons.launch, size: 20.0)
                ],
              ),
            ),
            UIHelper.vSpaceXSmall(),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: JelajahKampusList(),
            ),
            UIHelper.vSpaceMedium(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Berita Terbaru",
                    style: Theme.of(context).textTheme.title,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LinkWebView(
                            initialUrl: "https://kema.unpad.ac.id/rilis/",
                          ),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.launch,
                      size: 20.0,
                    ),
                  )
                ],
              ),
            ),
            UIHelper.vSpaceXSmall(),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: getProportionateScreenHeight(250),
                child: PostList(),
              ),
            ),
            UIHelper.vSpaceMedium(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Lingkar Wacana Unpad",
                    style: Theme.of(context).textTheme.title,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LinkWebView(
                            initialUrl:
                            "https://kema.unpad.ac.id/lingkar-wacana-unpad",
                          ),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.launch,
                      size: 20.0,
                    ),
                  )
                ],
              ),
            ),
            UIHelper.vSpaceXSmall(),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: getProportionateScreenHeight(250),
                child: PostList(
                  categoryId: 514,
                ),
              ),
            ),
            UIHelper.vSpaceMedium(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Kajian Terkini",
                    style: Theme.of(context).textTheme.title,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LinkWebView(
                            initialUrl: "https://kema.unpad.ac.id/kastrat/",
                          ),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.launch,
                      size: 20.0,
                    ),
                  )
                ],
              ),
            ),
            UIHelper.vSpaceXSmall(),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: getProportionateScreenHeight(250),
                child: PostList(
                  categoryId: 631,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
