import 'package:flutter/material.dart';
import 'package:genius_square/core/models/pair.dart';
import 'package:genius_square/core/utils.dart';
import 'package:genius_square/widgets/gird.dart';
import 'package:genius_square/widgets/peg.dart';
import 'package:genius_square/widgets/empty.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  _MainScreenState() {
    _resetGrid();
  }
  List<Pair> _rolledDice = new List<Pair>();
  List<Widget> row1 = List<Widget>();
  List<Widget> row2 = List<Widget>();
  List<Widget> row3 = List<Widget>();
  List<Widget> row4 = List<Widget>();
  List<Widget> row5 = List<Widget>();
  List<Widget> row6 = List<Widget>();

  _resetGrid() {
    row1.clear();
    row2.clear();
    row3.clear();
    row4.clear();
    row5.clear();
    row6.clear();
    _setEmpty();
  }

  _setEmpty() {
    //setState(() {
    for (var i = 1; i <= 6; i++) {
      _addEmptyTo(1, i, row1);
      _addEmptyTo(2, i, row2);
      _addEmptyTo(3, i, row3);
      _addEmptyTo(4, i, row4);
      _addEmptyTo(5, i, row5);
      _addEmptyTo(6, i, row6);
    }
    //});
  }

  _setPegs(List<Pair> pegPairs) {
    for (Pair p in pegPairs) {
      if (p.row == 1)
        _addPegTo(p.row, p.column - 1, row1);
      else if (p.row == 2)
        _addPegTo(p.row, p.column - 1, row2);
      else if (p.row == 3)
        _addPegTo(p.row, p.column - 1, row3);
      else if (p.row == 4)
        _addPegTo(p.row, p.column - 1, row4);
      else if (p.row == 5)
        _addPegTo(p.row, p.column - 1, row5);
      else if (p.row == 6) _addPegTo(p.row, p.column - 1, row6);
    }
  }

  _addPegTo(int row, int column, List<Widget> listToAddTo) {
    //var p1 = Peg(row, column);
    //p1.setColor(Colors.grey);
    //listToAddTo.add(p1);
    var text = row.toString() + "-" + column.toString();
    listToAddTo.insert(column, Peg(title: text));
  }

  _addEmptyTo(int row, int column, List<Widget> listToAddTo) {
    //var e1 = Empty(row, column);
    //e1.setColor(Colors.white);
    //listToAddTo.add(e1);
    var text = row.toString() + "-" + column.toString();
    listToAddTo.insert(column - 1, Empty(title: text));
  }

  void _rollDice() {
    setState(() {
      _rolledDice = rollDice();
      _setEmpty();
      _setPegs(_rolledDice);
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
      body: Grid(
        pairs: _rolledDice,
        r1: row1,
        r2: row2,
        r3: row3,
        r4: row4,
        r5: row5,
        r6: row6,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _rollDice,
        tooltip: 'Roll Dice',
        child: Icon(Icons.rotate_left),
      ),
    );
  }
}