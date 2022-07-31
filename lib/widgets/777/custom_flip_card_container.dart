import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class CustomFlipCardsContainer extends StatelessWidget {
  const CustomFlipCardsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Flip Card Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: _renderContent(
                      context,
                      FlipDirection.HORIZONTAL,
                      const Color(0xFF006666),
                    ),
                  ),
                  Expanded(
                    child: _renderContent(
                      context,
                      FlipDirection.VERTICAL,
                      const Color(0xFFD54193),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: _renderContent(
                      context,
                      FlipDirection.VERTICAL,
                      const Color(0xFF82D249),
                    ),
                  ),
                  Expanded(
                    child: _renderContent(
                      context,
                      FlipDirection.HORIZONTAL,
                      const Color(0xFFD2AE49),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _renderContent(context, FlipDirection flipDirection, Color color) {
    return Card(
      color: Colors.white.withAlpha(
        150,
      ),
      child: FlipCard(
        direction: flipDirection,
        speed: 1000,
        front: const Center(
          child: Text(
            'Click here to flip back',
            textAlign: TextAlign.center,
          ),
        ),
        back: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Back', style: Theme.of(context).textTheme.headline1),
              Text('Click here to flip front',
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
      ),
    );
  }
}
