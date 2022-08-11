/// Created by HrAnT
import 'package:flutter/material.dart';
import 'package:flutter_group_3/screens/web_view_screen/web_view_page.dart';

class DemoForWebViewScreen extends StatelessWidget {
  final String mUrl;

  const DemoForWebViewScreen({
    Key? key,
    required this.mUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _urlButton(context, mUrl),
        ],
      ),
    );
  }

  Widget _urlButton(BuildContext context, String url) {
    return Center(
      child: ElevatedButton(
        onPressed: () => _handleURLButtonPress(
          context,
          url,
        ),
        child: const Text(
          'Url Button',
        ),
      ),
    );
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(
          url: url,
        ),
      ),
    );
  }
}
