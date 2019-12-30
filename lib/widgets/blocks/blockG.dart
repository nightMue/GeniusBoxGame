import 'package:flutter/material.dart';

class BlockG extends StatefulWidget {
  const BlockG({
    Key key,
    @required this.dimension,
  }) : super(key: key);

  final double dimension;
  
  @override
  _BlockGState createState() => _BlockGState();
}

class _BlockGState extends State<BlockG> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.dimension.toString()),
    );
  }
}