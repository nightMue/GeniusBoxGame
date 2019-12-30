import 'package:flutter/material.dart';

class BlockE extends StatefulWidget {
  const BlockE({
    Key key,
    @required this.dimension,
  }) : super(key: key);

  final double dimension;
  
  @override
  _BlockEState createState() => _BlockEState();
}

class _BlockEState extends State<BlockE> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.dimension.toString()),
    );
  }
}