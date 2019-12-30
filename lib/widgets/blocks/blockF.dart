import 'package:flutter/material.dart';

class BlockF extends StatefulWidget {
  const BlockF({
    Key key,
    @required this.dimension,
  }) : super(key: key);

  final double dimension;
  
  @override
  _BlockFState createState() => _BlockFState();
}

class _BlockFState extends State<BlockF> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.dimension.toString()),
    );
  }
}