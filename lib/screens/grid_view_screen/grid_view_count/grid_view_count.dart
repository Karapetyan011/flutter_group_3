import 'package:flutter/material.dart';
import 'package:flutter_group_3/screens/grid_view_screen/grid_view_count/widgets/grid_card.dart';

import '../../../constants/constants.dart';

class GridViewCount extends StatelessWidget {
  const GridViewCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Count'),
      ),
      //
      body: GridView.count(
        // shrinkWrap: Если это ложь, прокручиваемый список занимает больше места для прокрутки в направлении прокрутки.
        // Это нехорошо, потому что расходует память и снижает производительность приложения.
        // Поэтому мы будем обертывать наши дочерние виджеты с помощью shrinkWrap,
        // установив для него значение true, чтобы избежать утечки памяти при прокрутке.
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(
          myCustomList.length,
          (index) {
            return Center(
              child: GridCard(
                gridItemComponent: myCustomList[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
