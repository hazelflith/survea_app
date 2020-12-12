import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LinkWebView extends StatefulWidget {
  LinkWebView({this.initialUrl});
  final String initialUrl;

  @override
  _LinkWebViewState createState() => _LinkWebViewState();
}

class _LinkWebViewState extends State<LinkWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Kema", style: Theme.of(context).textTheme.display1,),
      ),
      body: WebView(
      initialUrl: widget.initialUrl,
      javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}