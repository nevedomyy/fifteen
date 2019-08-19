import 'package:flutter/material.dart';
import 'box_view.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BoxView()
    );
  }
}