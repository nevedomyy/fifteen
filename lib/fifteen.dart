import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';
import 'box_unit.dart';


class Fifteen extends StatefulWidget {
  final double _size;
  Fifteen(this._size);
  @override
  _FifteenState createState() => _FifteenState(_size);
}

class _FifteenState extends State<Fifteen> {
  final double _size;
  List <Widget> _list;

  _FifteenState(this._size);

  @override
  initState() {
    super.initState();
    accelerometerEvents.listen((data){
      if(data.x.abs() >= 20) _shuffle();
    });
    _shuffle();
  }

  _shuffle(){
    List<int> unit = List.generate(15, (i) => i+1);
    unit.shuffle();
    _list = List.generate(15, (index) => BoxUnit(_size, unit[index], index));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      key: UniqueKey(),
      children: _list
    );
  }
}