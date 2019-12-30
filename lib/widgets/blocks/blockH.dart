import 'package:flutter/material.dart';

class BlockH extends StatefulWidget {
  const BlockH({
    Key key,
    @required this.dimension,
  }) : super(key: key);

  final double dimension;
  
  @override
  _BlockHState createState() => _BlockHState();
}

class _BlockHState extends State<BlockH> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.dimension.toString()),
    );
  }
}