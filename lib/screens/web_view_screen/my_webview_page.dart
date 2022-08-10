import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebViewPage extends StatefulWidget{
  const MyWebViewPage({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<MyWebViewPage> createState() => MyWebViewPageState();
}

class MyWebViewPageState extends State<MyWebViewPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
      title: const Text('My Web View'),
       centerTitle: true,
     ),
     body: Column(
       children: [
         Expanded(
           child: WebView(
             initialUrl: widget.url,
           ),
         )
       ],
     ) ,
   );
  }
}