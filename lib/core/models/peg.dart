import 'package:flutter/material.dart';
import 'package:genius_square/core/models/block.dart';

class Peg extends Block{
  final int row;
  final int column;

  Peg(this.row, this.column) : super(null);

  setColor(Color c) { this.color = c;}
}