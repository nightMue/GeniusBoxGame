import 'package:flutter/material.dart';
import 'package:genius_square/core/models/pair.dart';
import 'package:genius_square/widgets/blocks.dart';

class Grid extends StatefulWidget {
  const Grid({
    Key key,
    @required this.pairs,
  }) : super(key: key);

  final List<Pair> pairs;

  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
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
                            _box("A1", cubeDemension),
                            _box("A2", cubeDemension),
                            _box("A3", cubeDemension),
                            _box("A4", cubeDemension),
                            _box("A5", cubeDemension),
                            _box("A6", cubeDemension),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _box("B1", cubeDemension),
                            _box("B2", cubeDemension),
                            _box("B3", cubeDemension),
                            _box("B4", cubeDemension),
                            _box("B5", cubeDemension),
                            _box("B6", cubeDemension),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _box("C1", cubeDemension),
                            _box("C2", cubeDemension),
                            _box("C3", cubeDemension),
                            _box("C4", cubeDemension),
                            _box("C5", cubeDemension),
                            _box("C6", cubeDemension),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _box("D1", cubeDemension),
                            _box("D2", cubeDemension),
                            _box("D3", cubeDemension),
                            _box("D4", cubeDemension),
                            _box("D5", cubeDemension),
                            _box("D6", cubeDemension),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _box("E1", cubeDemension),
                            _box("E2", cubeDemension),
                            _box("E3", cubeDemension),
                            _box("E4", cubeDemension),
                            _box("E5", cubeDemension),
                            _box("E6", cubeDemension),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            _box("F1", cubeDemension),
                            _box("F2", cubeDemension),
                            _box("F3", cubeDemension),
                            _box("F4", cubeDemension),
                            _box("F5", cubeDemension),
                            _box("F6", cubeDemension),
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

Widget _box(String text, double demension) {
  return Container(
    width: demension,
    height: demension,
    decoration:
        BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
    child: Center(
      child: Text(text),
    ),
  );
}
