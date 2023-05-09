import 'package:flutter/material.dart';

class NotificationsIndicator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Icon(Icons.notifications_none_outlined, color:  Colors.blueGrey),

          Positioned(
            left: 2,
            child: Container(
              width: 7,
              height: 7,
              decoration: buildBoxDecoration(),
            ),
          )
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(100)
  );
}