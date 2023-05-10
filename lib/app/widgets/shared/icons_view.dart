import 'package:flutter/material.dart';
import 'package:luna_app/app/widgets/cards/white_card.dart';
import 'package:luna_app/app/widgets/labels/custom_labels.dart';


class IconsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Text('Icons', style: CustomLabels.h1),

          SizedBox(height: 10),

          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            children: [

              WhiteCard(
                title: 'UNIT_OUTLINED',
                child: Center(child: Icon(Icons.ac_unit_outlined),
                ),
              ),

              WhiteCard(
                title: 'UNIT_OUTLINED',
                child: Center(child: Icon(Icons.ac_unit_outlined),
                ),
              ),

              WhiteCard(
                title: 'UNIT_OUTLINED',
                child: Center(child: Icon(Icons.ac_unit_outlined),
                widthFactor: 170,
                ),
              ),

              WhiteCard(
                title: 'UNIT_OUTLINED',
                child: Center(child: Icon(Icons.ac_unit_outlined),
                widthFactor: 170,
                ),
              ),

              WhiteCard(
                title: 'UNIT_OUTLINED',
                child: Center(child: Icon(Icons.ac_unit_outlined),
                
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}