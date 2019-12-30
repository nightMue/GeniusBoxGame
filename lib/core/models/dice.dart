import 'package:genius_square/core/models/pair.dart';

class Dice {
  final List<Pair> sides;

  Dice(this.sides);

  Pair getSide(int num) {
    return sides.elementAt(num);
  }
}