import 'package:flutter/material.dart';

class BlockB extends StatefulWidget {
  const BlockB({
    Key key,
    @required this.dimension,
  }) : super(key: key);

  final double dimension;

  @override
  _BlockBState createState() => _BlockBState();
}

class _BlockBState extends State<BlockB> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.dimension.toString()),
    );
  }
}