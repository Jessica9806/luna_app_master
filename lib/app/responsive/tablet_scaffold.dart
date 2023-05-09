import 'package:flutter/material.dart';
import 'package:luna_app/app/utils/my_box.dart';
import 'package:luna_app/app/utils/my_tile.dart';
import 'constants.dart';

class TableScalffold extends StatefulWidget {
  const TableScalffold({Key? key}) : super(key: key);

  @override
  State<TableScalffold> createState() => _TableScalffoldState();
}

class _TableScalffoldState extends State<TableScalffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (context, index){
                  return myBox();
                },
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return MyTile();
                }
            ),
          )
        ],
      ),
    );
  }
}