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
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.green
                ),
                width: widget.dimension,
                height: widget.dimension,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.green
                ),
                width: widget.dimension,
                height: widget.dimension,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.green
                ),
                width: widget.dimension,
                height: widget.dimension,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.green
                ),
                width: widget.dimension,
                height: widget.dimension,
              )
            ],
          ),
        ],
      ),
      //child: Text(widget.dimension.toString()),
    );
  }
}