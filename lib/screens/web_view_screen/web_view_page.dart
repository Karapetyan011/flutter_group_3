/// Created by HrAnT
///
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;

  const WebViewPage({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Web View',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: WebView(
              initialUrl: widget.url,
            ),
          ),
        ],
      ),
    );
  }
}
