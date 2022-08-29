import 'package:flutter/material.dart';

import '../../widgets/text_column.dart';

class CommunityTextColumn extends StatelessWidget {
  const CommunityTextColumn({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Community',
      text:
          'Eu sint do id aliqua qui tempor sint cillum commodo id voluptate qui.',
    );
  }
}
