import 'package:flutter/material.dart';

class Peg extends StatelessWidget {
  const Peg({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
