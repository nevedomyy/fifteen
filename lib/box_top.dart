import 'package:flutter/material.dart';


class BoxTop extends StatelessWidget{
  final double _size;
  BoxTop(this._size);
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
                    colors: [Color(0xFFC72018),Color(0xFFB50A03)]
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(color: Colors.black38, blurRadius: 2)
                ]
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFDE1207), width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))
                  ),
                  child: Center(
                      child: SizedBox.fromSize(
                        size: Size.square(_size*2/3),
                        child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xFFBA1813),Color(0xFFBA2119)]
                              ),
                              borderRadius: BorderRadius.circular(180.0),
                            ),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.0, top: 16.0),
                                child: Text(
                                  '15',
                                  style: TextStyle(color: Color(0xFFCD2518), fontSize: 180.0, fontFamily: 'pobeda'),
                                ),
                              ),
                            )
                        ),
                      )
                  )
              ),
            )
        ),
      ),
    );
  }
}
