import 'package:flutter/material.dart';
import 'box_bottom.dart';
import 'box_top.dart';


class BoxView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width-20;
    return Material(
        color: Colors.grey[100],
        child: Stack(
          children: <Widget>[
            Positioned(
              left: size/5,
              bottom: size-size/8,
              child: BoxTop(size),
            ),
            Positioned(
              bottom: 0,
              child: BoxBottom(size),
            )
          ],
        )
    );
  }
}