import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';

class AnimatedWave extends StatelessWidget {  
  final double height;
  final double speed;
  final double offset;

  AnimatedWave({this.height, this.speed, this.offset});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: height,
        width: constraints.biggest.width,
        child: ControlledAnimation(
          playback: Playback.LOOP,
          duration: Duration(milliseconds: (5000 / speed).round()),
          tween: Tween(begin: 0.0, end: 2 * pi),
          builder: (context,value) {
            return CustomPaint(
              foregroundPainter: CurvePainter(value),
            );
          },
        ),
      );
    });
  }
}

class CurvePainter extends CustomPainter {
  final double value;

  CurvePainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()..color = Colors.white;
    final path = Path();

    final y2 = sin(value + pi / 2);
    final startPointY = (size.height / 3) * 2;
    final controlPointY = size.height * (0.6 + 0.2 * y2);
    final controlPointY2 = size.height * (0.4 + 0.2 * (sin(value - pi / 2)));

    var firstEndPoint = new Offset(size.width / 2, size.height / 2);
    var firstControlPoint = new Offset(size.width / 4, controlPointY);
    path.moveTo(0, startPointY);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = new Offset(size.width, size.height / 4);
    var secondControlPoint = new Offset((size.width / 4) * 3, (controlPointY2));
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}