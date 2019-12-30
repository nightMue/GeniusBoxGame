import 'package:flutter/material.dart';

class BlockI extends StatefulWidget {
  const BlockI({
    Key key,
    @required this.dimension,
  }) : super(key: key);

  final double dimension;
  
  @override
  _BlockIState createState() => _BlockIState();
}

class _BlockIState extends State<BlockI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.dimension.toString()),
    );
  }
}