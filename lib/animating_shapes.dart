import 'dart:ui';

import 'package:flip_counter/shapes.dart';
import 'package:flip_counter/transition_animation_widgets.dart';
import 'package:flutter/material.dart';

class AnimatedCircle extends StatelessWidget {
  const AnimatedCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 15, sigmaY: 12),
      child: SlidingShape(
        tween: Tween<Offset>(
          begin: const Offset(-400, 0),
          end: const Offset(100, 500),
        ),
        child: RotatingShape(
          child: CustomPaint(
            painter: Circle(),
          ),
        ),
      ),
    );
  }
}

class AnimatedSemiArc extends StatelessWidget {
  const AnimatedSemiArc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 10),
      child: SlidingShape(
        tween: Tween<Offset>(
          begin: const Offset(-400, -100),
          end: const Offset(-100, -500.0),
        ),
        child: RotatingShape(
          child: CustomPaint(
            painter: SemiArc(),
          ),
        ),
      ),
    );
  }
}

class AnimatedTriangle extends StatelessWidget {
  const AnimatedTriangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: SlidingShape(
        tween: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(200, 0.0),
        ),
        child: RotatingShape(
          child: CustomPaint(
            painter: Triangle(),
          ),
        ),
      ),
    );
  }
}

class AnimatedSwiggle extends StatelessWidget {
  const AnimatedSwiggle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingShape(
      tween: Tween<Offset>(
        begin: const Offset(0, -400),
        end: const Offset(500, 50),
      ),
      child: RotatingShape(
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 0.1, sigmaY: 2),
          child: SizedBox.square(
            dimension: 300,
            child: CustomPaint(
              painter: SwigglyLine(),
            ),
          ),
        ),
      ),
    );
  }
}
