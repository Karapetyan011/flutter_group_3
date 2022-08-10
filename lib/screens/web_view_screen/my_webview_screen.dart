import 'package:flutter/material.dart';
import 'package:flutter_group_3/screens/web_view_screen/my_webview_page.dart';

class MyWebViewScreen extends StatelessWidget {
  final String myUrl;
  const MyWebViewScreen({Key? key, required this.myUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          myUlrButton(context, myUrl)
        ],
      ),
    );
  }
}

Widget myUlrButton(BuildContext context, String myUrl) {
  return Center(
    child: ElevatedButton(
      onPressed: () => handleButton(context, myUrl),
      child: const Text("URL Button"),
    ),
  );
}

void handleButton(BuildContext context, String myUrl) {
  Navigator.push(context, MaterialPageRoute(
      builder: (context) => MyWebViewPage(url: myUrl)
  ));
}
