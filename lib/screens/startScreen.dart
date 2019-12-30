import 'package:flutter/material.dart';
import 'package:genius_square/widgets/startScreenAnimation/animatedBackground.dart';
import 'package:genius_square/widgets/startScreenAnimation/animatedWave.dart';
import 'package:genius_square/widgets/startScreenAnimation/centeredText.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: AnimatedBackground()),
        onBottom(AnimatedWave(
          height: MediaQuery.of(context).size.height - 20,
          speed: 0.5,
          offset: 0.2,
        )),
        Positioned.fill(child: CenteredText()),
      ],
    );
  }

  onBottom(Widget child) => Positioned.fill(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: child,
    ),
  );
}