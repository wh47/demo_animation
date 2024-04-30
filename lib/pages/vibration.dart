import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';

class VibrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vibration on Text Press'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // HapticFeedback.vibrate();
            Vibration.vibrate();
          },
          child: Text(
            'Press here to vibrate device',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
