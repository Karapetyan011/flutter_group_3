import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyPiano extends StatelessWidget{
  const MyPiano({Key? key}) : super(key: key);

  void player(int soundNumber){
    final AudioCache player = AudioCache();
    player.play('audio/note$soundNumber.wav');
  }
   Expanded _buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color)
        ),
        onPressed: (){
          player(soundNumber);
        }, child: null,
      ),
    );
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildKey(color: Colors.red, soundNumber: 1),
              _buildKey(color: Colors.orange, soundNumber: 2),
              _buildKey(color: Colors.yellow, soundNumber: 3),
              _buildKey(color: Colors.green, soundNumber: 4),
              _buildKey(color: Colors.teal, soundNumber: 5),
              _buildKey(color: Colors.blue, soundNumber: 6),
              _buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

}