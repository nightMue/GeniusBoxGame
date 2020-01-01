import 'package:flutter/material.dart';
import 'package:genius_square/core/models/block.dart';

class Empty extends Block{
  final int row;
  final int column;

  Empty(this.row, this.column) : super(null);

  setColor(Color c) { this.color = c;}
}