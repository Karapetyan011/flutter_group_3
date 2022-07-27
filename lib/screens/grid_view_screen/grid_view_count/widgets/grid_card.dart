import 'package:flutter/material.dart';

import '../grid_item_component.dart';

class GridCard extends StatelessWidget {
  const GridCard({Key? key, required this.gridItemComponent}) : super(key: key);
  final GridItemComponent gridItemComponent;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Icon(
                gridItemComponent.icon,
                size: 50.0,
              ),
            ),
            Text(
              gridItemComponent.title,
              style: const TextStyle(
                color: Colors.purple,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
