import 'package:flutter/material.dart';

class BlockD extends StatefulWidget {
  const BlockD({
    Key key,
    @required this.dimension,
  }) : super(key: key);

  final double dimension;
  
  @override
  _BlockDState createState() => _BlockDState();
}

class _BlockDState extends State<BlockD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.dimension.toString()),
    );
  }
}