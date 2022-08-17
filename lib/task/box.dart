import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Boxes()));
}
class TextColor{

}

class Boxes extends StatelessWidget {
  const Boxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.purple,
                  child: const Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60.0,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  color: Colors.red,
                  height: 100.0,
                  width: 200.0,
                  child: const Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                  color: Colors.orange,
                  height: 200.0,
                  width: 100.0,
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Container(
                  color: Colors.blue,
                  height: 100.0,
                  width: 200.0,
                  child: const Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Container(
                  color: Colors.green,
                  height: 200.0,
                  width: 100.0,
                  child: const Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class Box extends StatelessWidget {
//   // const Box({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: ClipPath(
//           clipper: MyCustomClipper(),
//           child: Container(
//             width:300.0,
//             height: 300.0,
//             color: Colors.blue,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path()
//       // ..addRect(Rect.fromPoints(Offset(0, 0), Offset(200.0, 100.0)))
//       // ..addRect(Rect.fromPoints(Offset(0, 300), Offset(100.0, 100.0)))
//       // ..addRect(Rect.fromPoints(Offset(200, 0), Offset(300.0, 200.0)))
//       // ..addRect(Rect.fromPoints(Offset(100, 300), Offset(300.0, 200.0)))
//       ..addRect(Rect.fromCircle(
//           center: Offset(size.width / 2, size.height / 2), radius: 50.0))
//
//       ..close();
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
