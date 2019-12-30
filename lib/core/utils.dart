import 'package:genius_square/core/models/pair.dart';
import 'package:genius_square/core/models/dice.dart';

import 'dart:math';

List<Pair> rollDice() {
  List<Pair> rolledPairs = new List<Pair>();
  rolledPairs.add(d1.getSide(next(_lowSide,_highSide)));
  rolledPairs.add(d2.getSide(next(_lowSide,_highSide)));
  rolledPairs.add(d3.getSide(next(_lowSide,_highSide)));
  rolledPairs.add(d4.getSide(next(_lowSide,_highSide)));
  rolledPairs.add(d5.getSide(next(_lowSide,_highSide)));
  rolledPairs.add(d6.getSide(next(_lowSide,_highSide)));
  rolledPairs.add(d7.getSide(next(_lowSide,_highSide)));
  return rolledPairs;
}

final _random = new Random();
final _lowSide = 0;
final _highSide = 6;
int next(int min, int max) => min + _random.nextInt(max - min);

Dice d1 = new Dice([
  Pair("A",3),
  Pair("C",2),
  Pair("B",2),
  Pair("B",3),
  Pair("B",1),
  Pair("A",2),
]);

Dice d2 = new Dice([
  Pair("D",5),
  Pair("F",5),
  Pair("E",5),
  Pair("F",4),
  Pair("E",4),
  Pair("E",6),
]);

Dice d3 = new Dice([
  Pair("F",2),
  Pair("E",1),
  Pair("F",2),
  Pair("B",6),
  Pair("A",5),
  Pair("A",5),
]);

Dice d4 = new Dice([
  Pair("D",6),
  Pair("B",5),
  Pair("F",6),
  Pair("C",6),
  Pair("C",5),
  Pair("A",4),
]);

Dice d5 = new Dice([
  Pair("A",6),
  Pair("F",1),
  Pair("F",1),
  Pair("F",1),
  Pair("A",6),
  Pair("A",6),
]);

Dice d6 = new Dice([
  Pair("E",3),
  Pair("D",3),
  Pair("D",4),
  Pair("C",3),
  Pair("B",4),
  Pair("C",4),
]);

Dice d7 = new Dice([
  Pair("E",2),
  Pair("C",1),
  Pair("F",3),
  Pair("D",2),
  Pair("D",1),
  Pair("A",1),
]);

