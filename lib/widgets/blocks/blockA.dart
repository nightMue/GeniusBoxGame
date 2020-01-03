import 'package:flutter/material.dart';

class BlockA extends StatefulWidget {
  const BlockA({
    Key key,
    @required this.dimension,
  }) : super(key: key);

  final double dimension;

  @override
  _BlockAState createState() => _BlockAState();
}

class _BlockAState extends State<BlockA> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        color: Colors.blue
      ),
      width: widget.dimension,
      height: widget.dimension,
      //child: Text(widget.dimension.toString()),
    );
  }
}