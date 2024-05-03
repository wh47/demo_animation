import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class LongPressContainer extends StatefulWidget {
  @override
  _LongPressContainerState createState() => _LongPressContainerState();
}

class _LongPressContainerState extends State<LongPressContainer>
    with TickerProviderStateMixin {
  double _containerSize = 200.0;
  bool _isPressed = false;
  late Ticker _ticker;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker((_) {
      if (_isPressed) {
        setState(() {
          _containerSize += 1;
        });
      } else {
        if (_containerSize > 200.0) {
          setState(() {
            _containerSize -= 1;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (details) {
        setState(() {
          _isPressed = true;
        });
        _ticker.start();
      },
      onLongPressEnd: (details) {
        setState(() {
          _isPressed = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 20),
        width: _containerSize,
        height: _containerSize,
        color: _isPressed ? Colors.blue : Colors.green,
        child: const Center(
          child: Text(
            'Long Press Me',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }
}
