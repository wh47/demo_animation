import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(width: 20.0, height: 100.0),
            const Text(
              'Be',
              style: TextStyle(fontSize: 43.0, color: Colors.amber),
            ),
            const SizedBox(width: 20.0, height: 100.0),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 40.0,
                fontFamily: 'Satoshi',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText('AWESOME'),
                  RotateAnimatedText('OPTIMISTIC'),
                  RotateAnimatedText('DIFFERENT'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
