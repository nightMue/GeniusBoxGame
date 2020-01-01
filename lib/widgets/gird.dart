import 'package:flutter/material.dart';
import 'package:genius_square/core/models/block.dart';
import 'package:genius_square/core/models/empty.dart';
import 'package:genius_square/core/models/pair.dart';
import 'package:genius_square/core/models/peg.dart';
import 'package:genius_square/widgets/blocks.dart';

class Grid extends StatefulWidget {
  const Grid({
    Key key,
    @required this.pairs,
    @required this.r1,
    @required this.r2,
    @required this.r3,
    @required this.r4,
    @required this.r5,
    @required this.r6,
  }) : super(key: key);

  final List<Pair> pairs;
  final List<Block> r1;
  final List<Block> r2;
  final List<Block> r3;
  final List<Block> r4;
  final List<Block> r5;
  final List<Block> r6;

  @override
  _GridState createState() => _GridState(r1, r2, r3, r4, r5, r6);
}

class _GridState extends State<Grid> {
  _GridState(List<Block> r1,List<Block> r2,List<Block> r3,List<Block> r4,List<Block> r5,List<Block> r6,){
    row1 = r1;
    row2 = r2;
    row3 = r3;
    row4 = r4;
    row5 = r5;
    row6 = r6;
  }
  List<Block> row1 = List<Block>();
  List<Block> row2 = List<Block>();
  List<Block> row3 = List<Block>();
  List<Block> row4 = List<Block>();
  List<Block> row5 = List<Block>();
  List<Block> row6 = List<Block>();

 

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height - 50;
    double appWidth = MediaQuery.of(context).size.width;
    double cubeDemension = appWidth / 6;
    double gridDemension = appWidth;
    if (appWidth >= appHeight / 2) {
      cubeDemension = (appHeight / 2) / 6;
      gridDemension = appHeight / 2;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Container(
              //height: (MediaQuery.of(context).size.height - 25) / 2,
              height: gridDemension,
              color: Colors.blue,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            _box("A1", cubeDemension, row1.elementAt(0)),
                            _box("A2", cubeDemension, row1.elementAt(1)),
                            _box("A3", cubeDemension, row1.elementAt(2)),
                            _box("A4", cubeDemension, row1.elementAt(3)),
                            _box("A5", cubeDemension, row1.elementAt(4)),
                            _box("A6", cubeDemension, row1.elementAt(5)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _box("B1", cubeDemension, row2.elementAt(0)),
                            _box("B2", cubeDemension, row2.elementAt(1)),
                            _box("B3", cubeDemension, row2.elementAt(2)),
                            _box("B4", cubeDemension, row2.elementAt(3)),
                            _box("B5", cubeDemension, row2.elementAt(4)),
                            _box("B6", cubeDemension, row2.elementAt(5)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _box("C1", cubeDemension, row3.elementAt(0)),
                            _box("C2", cubeDemension, row3.elementAt(1)),
                            _box("C3", cubeDemension, row3.elementAt(2)),
                            _box("C4", cubeDemension, row3.elementAt(3)),
                            _box("C5", cubeDemension, row3.elementAt(4)),
                            _box("C6", cubeDemension, row3.elementAt(5)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _box("D1", cubeDemension, row4.elementAt(0)),
                            _box("D2", cubeDemension, row4.elementAt(1)),
                            _box("D3", cubeDemension, row4.elementAt(2)),
                            _box("D4", cubeDemension, row4.elementAt(3)),
                            _box("D5", cubeDemension, row4.elementAt(4)),
                            _box("D6", cubeDemension, row4.elementAt(5)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _box("E1", cubeDemension, row5.elementAt(0)),
                            _box("E2", cubeDemension, row5.elementAt(1)),
                            _box("E3", cubeDemension, row5.elementAt(2)),
                            _box("E4", cubeDemension, row5.elementAt(3)),
                            _box("E5", cubeDemension, row5.elementAt(4)),
                            _box("E6", cubeDemension, row5.elementAt(5)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _box("F1", cubeDemension, row6.elementAt(0)),
                            _box("F2", cubeDemension, row6.elementAt(1)),
                            _box("F3", cubeDemension, row6.elementAt(2)),
                            _box("F4", cubeDemension, row6.elementAt(3)),
                            _box("F5", cubeDemension, row6.elementAt(4)),
                            _box("F6", cubeDemension, row6.elementAt(5)),
                          ],
                        ),
                      ],
                    ),
                  ])),
        ),
        Flexible(
          flex: 1,
          child: Blocks(blockDemension: cubeDemension,)
        )
      ],
    );
  }
}

Widget _box(String text, double demension, Block fillBlock) {
  return Container(
    width: demension,
    height: demension,
    decoration:
        BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: fillBlock.color
        ),
    child: Center(
      child: Text(text),
    ),
  );
}
