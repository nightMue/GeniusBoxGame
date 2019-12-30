import 'package:flutter/material.dart';
import 'package:genius_square/core/models/pair.dart';
import 'package:genius_square/core/utils.dart';
import 'package:genius_square/widgets/gird.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Pair> _rolledDice = new List<Pair>();

  void _rollDice() {
    setState(() {
      _rolledDice = rollDice();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(25.0),
        child: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text("Time: 55:55"),
          ),
        ),
      ),
      body: Grid(pairs: _rolledDice),
      floatingActionButton: FloatingActionButton(
        onPressed: _rollDice,
        tooltip: 'Increment',
        child: Icon(Icons.rotate_left),
      ),
    );
  }
}
