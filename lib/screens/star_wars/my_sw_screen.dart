import 'package:flutter/material.dart';
import '../../core/services/my_swap_services.dart';
void main() => runApp(const StarWars());

class StarWars extends StatelessWidget{
  const StarWars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SwHomePage(),
    );
  }
}

class SwHomePage extends StatefulWidget{
  const SwHomePage({Key? key}) : super(key: key);

  @override
  State<SwHomePage> createState() => SwHomePageState();

}
class SwHomePageState extends State<SwHomePage>{
  dynamic name;
  int height = 0;
  int mass = 0;
  dynamic hair_color;
  dynamic skin_color;
  dynamic eye_color;
  dynamic birth_year;
  dynamic gender;
  dynamic homeworld;
  dynamic films;
  dynamic species;
  dynamic vehicles;
  dynamic starships;
  dynamic created;
  dynamic edited;
  dynamic url;

  @override
  void didChangeDependencies(){
    debugPrint('worked didChangeDependencies()');
    super.didChangeDependencies();
}
 @override
  void initState(){
   getSwData().then((value) => value);
   debugPrint('worked initState()');
   super.initState();
 }
 @override
 void didUpdateWidget(covariant SwHomePage oldWidget) {
   debugPrint('worked didUpdateWidget()');
   super.didUpdateWidget(oldWidget);
 }

  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       appBar: AppBar(
         title: const Text('Star Wars'),
         backgroundColor: Colors.indigo,
         centerTitle: true,
       ),
       body: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children:  [
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                width: double.infinity,
                 color: Colors.green,
                 child: Text('Response name: $name', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response height: $height', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
       Padding(
         padding: const EdgeInsets.symmetric(
           horizontal: 16.0,
           vertical: 12.0,
         ),
         child: Container(
           width: double.infinity,
           color: Colors.green,
           child: Text('Response mass: $mass', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
         ),
       ),

             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response skin color: $skin_color', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response eye color: $eye_color', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response hair color: $hair_color', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response birth year: $birth_year', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response gender: $gender', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response homeworld: $homeworld', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response films: $films', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response species: $species', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response vehicles: $vehicles', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response starships : $starships', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response created : $created', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response edited : $edited', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(
                 horizontal: 16.0,
                 vertical: 12.0,
               ),
               child: Container(
                 width: double.infinity,
                 color: Colors.green,
                 child: Text('Response url : $url', style: const TextStyle(fontSize: 12.0, color: Colors.black),),
               ),
             ),
           ],

         ),

       ),
     ),
   );
  }
  Future<dynamic> getSwData() async{
   return await MyStarWarsService().getDataFromSWApi().then((value) async{
     if(value != null){
       setState((){
         name = value!.name!;
         height = value!.height!.toInt();
         mass = value!.mass!.toInt();
         birth_year = value!.birth_year!;
         eye_color = value!.eye_color!;
         films = value!.films!;
         gender = value!.gender!;
         hair_color = value!.hair_color!;
         homeworld = value!.homeworld!;
         skin_color = value!.skin_color!;
          species = value!.species!;
         vehicles = value!.vehcles!;
          starships = value!.starsips!;
          created = value!.created!;
          edited = value!.edited!;
          url = value!.url!;

       });
       return value;
     }
   },
   ).catchError((_){
     throw Exception("Exception is caught");
   });
  }
}