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
  Pair(1,3),
  Pair(3,2),
  Pair(2,2),
  Pair(2,3),
  Pair(2,1),
  Pair(1,2),
]);

Dice d2 = new Dice([
  Pair(4,5),
  Pair(6,5),
  Pair(5,5),
  Pair(6,4),
  Pair(5,4),
  Pair(5,6),
]);

Dice d3 = new Dice([
  Pair(6,2),
  Pair(5,1),
  Pair(6,2),
  Pair(2,6),
  Pair(1,5),
  Pair(1,5),
]);

Dice d4 = new Dice([
  Pair(4,6),
  Pair(2,5),
  Pair(6,6),
  Pair(3,6),
  Pair(3,5),
  Pair(1,4),
]);

Dice d5 = new Dice([
  Pair(1,6),
  Pair(6,1),
  Pair(6,1),
  Pair(6,1),
  Pair(1,6),
  Pair(1,6),
]);

Dice d6 = new Dice([
  Pair(5,3),
  Pair(4,3),
  Pair(4,4),
  Pair(3,3),
  Pair(2,4),
  Pair(3,4),
]);

Dice d7 = new Dice([
  Pair(5,2),
  Pair(3,1),
  Pair(6,3),
  Pair(4,2),
  Pair(4,1),
  Pair(1,1),
]);

