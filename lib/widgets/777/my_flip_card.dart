import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class MyFlipCard extends StatelessWidget{
  const MyFlipCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                   Expanded(
                     child: renderContent(
                       context,
                       FlipDirection.HORIZONTAL,
                       const Color(0xFF006666)
                     ),
                   ),
                  Expanded(
                    child: renderContent(
                      context,
                      FlipDirection.VERTICAL,
                      const Color(0xFFD54193),
                    ),
                  ),

                  Expanded(
                    child: renderContent(
                      context,
                      FlipDirection.VERTICAL,
                      const Color(0xFF82D249),
                    ),
                  ),
                 ],
              ),
            )
          ],
        ),
      ),
    );
  }
  renderContent(context, FlipDirection flipDirection, Color color){
    return Card(
      color: Colors.blue.withAlpha(150),
      child: FlipCard(
        direction: flipDirection,
        speed: 1000,
        front: const Center(
          child: Text('Click to Flip Back',
          textAlign: TextAlign.center,
          ),
        ),
        back: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Back',
                  style: Theme.of(context).textTheme.headline3),
              Text('Click here to flip front',
                  style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
        ),
      ),
    );
  }

}