import 'package:flutter/material.dart';

class MyGridViewBuilder extends StatelessWidget{
  const MyGridViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "https://images.unsplash.com/5/unsplash-kitsune-4.jpg?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bc01c83c3da0425e9baa6c7a9204af81",
      'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGhvdG9ncmFwaHl8ZW58MHx8MHx8&w=1000&q=80',
      'https://media.istockphoto.com/photos/sunset-with-pebbles-on-beach-in-nice-france-picture-id1157205177?k=20&m=1157205177&s=612x612&w=0&h=bmCFFtaLRtF_eYhjZ3FkhPXU3X-yrdvr85xvl2CmQ9g=',
      'https://vis.sciencemag.org/photosof2018/img/assets/01_400.jpg'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery GridView'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 18.0,
            crossAxisSpacing: 12.0,
          ),
          itemBuilder: (BuildContext context, int index){
            return Image.network(list[index],
              fit: BoxFit.fill,
            );
          }
        ),
      ),
    );
  }

}