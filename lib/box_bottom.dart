import 'package:flutter/material.dart';
import 'fifteen.dart';


class BoxBottom extends StatelessWidget{
  final double _size;
  BoxBottom(this._size);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SizedBox.fromSize(
        size: Size.square(_size),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xFFDC342B),Color(0xFFC3110D)]
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(color: Colors.black38, blurRadius: 5)
                ]
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF95140E), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))
                ),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Material(
                    color: Color(0xFFA41B08),
                    child: Fifteen(_size),
                  ),
                ),
              ),
            )
        ),
      ),
    );
  }
}
