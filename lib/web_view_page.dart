import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/constant.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {

  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  var _stackToView = 1;

  void _handleLoad(String value) {
    setState(() {
      _stackToView = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _stackToView,
          children: [
            Column(
              children: <Widget>[
                Expanded(
                    child: WebView(
                      initialUrl: url,
                      javascriptMode: JavascriptMode.unrestricted,
                      onPageFinished: _handleLoad,
                      onWebViewCreated: (WebViewController webViewController) {
                        _controller.complete(webViewController);
                      },
                    )),
              ],
            ),
          ],
        )
    );
  }
}