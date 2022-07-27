import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> images = [
      "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg",
      "http://www.goodmorningimagesdownload.com/wp-content/uploads/2019/12/Love-Images-1.jpg",
      "https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "https://images.ctfassets.net/hrltx12pl8hq/qGOnNvgfJIe2MytFdIcTQ/429dd7e2cb176f93bf9b21a8f89edc77/Images.jpg"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Builder'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: const Color(0xF48780D7),
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 18.0,
            mainAxisSpacing: 18.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              images[index],
              fit: BoxFit.fill,
            );
          },
        ),
      ),
    );
  }
}
