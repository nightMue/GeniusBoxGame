import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:genius_square/core/models/block.dart';
import 'package:genius_square/core/models/empty.dart';
import 'package:genius_square/core/models/pair.dart';
import 'package:genius_square/core/models/peg.dart';
import 'package:genius_square/core/utils.dart';
import 'package:genius_square/widgets/gird.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  _MainScreenState() {
    _resetGrid();
  }
  List<Pair> _rolledDice = new List<Pair>();
  List<Block> row1 = List<Block>();
  List<Block> row2 = List<Block>();
  List<Block> row3 = List<Block>();
  List<Block> row4 = List<Block>();
  List<Block> row5 = List<Block>();
  List<Block> row6 = List<Block>();

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

  _addPegTo(int row, int column, List<Block> listToAddTo) {
    var p1 = Peg(row, column);
    p1.setColor(Colors.grey);
    //listToAddTo.add(p1);
    listToAddTo.insert(column, p1);
  }

  _addEmptyTo(int row, int column, List<Block> listToAddTo) {
    var e1 = Empty(row, column);
    e1.setColor(Colors.white);
    //listToAddTo.add(e1);
    listToAddTo.insert(column - 1, e1);
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
        tooltip: 'Increment',
        child: Icon(Icons.rotate_left),
      ),
    );
  }
}
