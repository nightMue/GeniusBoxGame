import 'package:flutter/material.dart';
import 'package:genius_square/screens/mainScreen.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class CenteredText extends StatelessWidget {
  const CenteredText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 6),
        ColorTween(begin: Color(0xffD38312), end: Colors.lightBlue.shade900)),
      Track("color2").add(Duration(seconds: 6),
        ColorTween(begin: Color(0xffA83279), end: Colors.blue.shade600))
    ]);

    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              //color: Colors.redAccent,
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Text(
                      "Genius Square",
                      style: TextStyle(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      textScaleFactor: 3,
                    ),
                    ControlledAnimation(
                      playback: Playback.MIRROR,
                      tween: tween,
                      duration: tween.duration,
                      builder: (context, animation) {
                        return Text(
                          "Genius Square",
                          style: TextStyle(
                            foreground: Paint()..shader = LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [animation["color1"], animation["color2"]]
                            ).createShader(Rect.fromLTRB(0, 0, MediaQuery.of(context).size.width, MediaQuery.of(context).size.height)),
                            fontWeight: FontWeight.bold
                          ),
                          textScaleFactor: 3,
                        );
                      },
                    )
                  ],
                )
              ),
            ),
          )
        ],
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                //color: Colors.blueAccent,
                //height: MediaQuery.of(context).,
                child: Center(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.white)
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
                    },
                    color: Colors.transparent,
                    textColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Play",
                        textScaleFactor: 2,
                      ),
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}