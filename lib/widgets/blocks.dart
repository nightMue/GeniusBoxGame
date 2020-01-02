import 'package:flutter/material.dart';
import 'package:genius_square/widgets/blocks/blockA.dart';
import 'package:genius_square/widgets/blocks/blockB.dart';
import 'package:genius_square/widgets/blocks/blockC.dart';
import 'package:genius_square/widgets/blocks/blockD.dart';
import 'package:genius_square/widgets/blocks/blockE.dart';
import 'package:genius_square/widgets/blocks/blockF.dart';
import 'package:genius_square/widgets/blocks/blockG.dart';
import 'package:genius_square/widgets/blocks/blockH.dart';
import 'package:genius_square/widgets/blocks/blockI.dart';

class Blocks extends StatefulWidget {
  const Blocks({
    Key key,
    @required this.blockDemension,
  }) : super(key: key);

  final double blockDemension;

  @override
  _BlocksState createState() => _BlocksState(blockDemension);
}

class _BlocksState extends State<Blocks> {
  BlockA bA;
  BlockB bB;
  BlockC bC;
  BlockD bD;
  BlockE bE;
  BlockF bF;
  BlockG bG;
  BlockH bH;
  BlockI bI;

  _BlocksState(double dim) {
    bA = BlockA(dimension: dim);
    bB = BlockB(dimension: dim);
    bC = BlockC(dimension: dim);
    bD = BlockD(dimension: dim);
    bE = BlockE(dimension: dim);
    bF = BlockF(dimension: dim);
    bG = BlockG(dimension: dim);
    bH = BlockH(dimension: dim);
    bI = BlockI(dimension: dim);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              bA, bB, bC
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              bD, bE, bF
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              bG, bH, bI
            ],
          ),
        ],
      ),
    );
  }
}