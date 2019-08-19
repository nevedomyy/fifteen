import 'package:flutter/material.dart';


class BoxUnit extends StatefulWidget{
  final double _size;
  final int _unit;
  final int _index;
  BoxUnit(this._size, this._unit, this._index);
  @override
  _BoxUnitState createState() => _BoxUnitState(_size, _unit, _index);
}

class _BoxUnitState extends State<BoxUnit>{
  static List <bool> _ways;
  static List <int> _position;
  final double _size;
  final int _unit;
  final int _index;
  double _dx = 0;
  double _dy = 0;

  _BoxUnitState(this._size, this._unit, this._index);

  @override
  void initState() {
    super.initState();
    _ways = List.generate(36, (i) => i == 28 ? false : true);
    _position = List.generate(15, (i) => i+7+2*(i~/4));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOutQuart,
      transform: Matrix4.translationValues(_dx, _dy, 0),
      child: GestureDetector(
        onTap: (){
          int i = _position[_index];
          if(!_ways[i-6]){_ways[i] = false; _ways[i-6] = true; _position[_index] = i-6; _dy += -(2+(_size-28)/4);}
          if(!_ways[i+6]){_ways[i] = false; _ways[i+6] = true; _position[_index] = i+6; _dy += 2+(_size-28)/4;}
          if(!_ways[i-1]){_ways[i] = false; _ways[i-1] = true; _position[_index] = i-1; _dx += -(2+(_size-28)/4);}
          if(!_ways[i+1]){_ways[i] = false; _ways[i+1] = true; _position[_index] = i+1; _dx += 2+(_size-28)/4;}
          setState(() {});
        },
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: SizedBox.fromSize(
            size: Size.square((_size-28)/4),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFF8F3F7),Color(0xFFEEF3F7)]
                  ),
                  border: Border.all(color: Color(0xFFE5E0DC), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Center(
                  child: SizedBox.fromSize(
                    size: Size.square((_size-30)*4/20),
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xFFF7EEF1),Color(0xFFE6DFD7)]
                            ),
                            borderRadius: BorderRadius.circular(90.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 4.0),
                            child: Text(
                              _unit.toString(),
                              style: TextStyle(color: Color(0xFF313129), fontSize: 60.0, fontFamily: 'pobeda'),
                            ),
                          ),
                        )
                    ),
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}