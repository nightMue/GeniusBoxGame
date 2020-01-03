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
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              color: Colors.purple
            ),
            width: widget.dimension,
            height: widget.dimension,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              color: Colors.purple
            ),
            width: widget.dimension,
            height: widget.dimension,
          )
        ],
      ),
      //child: Text(widget.dimension.toString()),
    );
  }
}