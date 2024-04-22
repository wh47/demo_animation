import 'package:flutter/material.dart';

class SplashContainer extends StatefulWidget {
  @override
  _SplashContainerState createState() => _SplashContainerState();
}

class _SplashContainerState extends State<SplashContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween<double>(
      begin: 1,
      end: 2,
    ).animate(_controller);

    _colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.blue,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onLongPressStart(LongPressStartDetails details) {
    _controller.forward();
  }

  void _onLongPressEnd(LongPressEndDetails details) {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: _onLongPressStart,
      onLongPressEnd: _onLongPressEnd,
      child: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Container(
                width: 300,
                height: 300,
                color: _colorAnimation.value,
                child: Center(
                  child: Text(
                    'Long Press',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
