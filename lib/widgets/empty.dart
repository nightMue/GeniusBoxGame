import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  const Empty({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
      ),
      child: Center(
        //child: Text(title),
      ),
    );
  }
}