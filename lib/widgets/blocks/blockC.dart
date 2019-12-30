import 'package:flutter/material.dart';

class BlockC extends StatefulWidget {
  const BlockC({
    Key key,
    @required this.dimension,
  }) : super(key: key);

  final double dimension;

  @override
  _BlockCState createState() => _BlockCState();
}

class _BlockCState extends State<BlockC> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.dimension.toString()),
    );
  }
}