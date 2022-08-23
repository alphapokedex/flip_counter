import 'package:flutter/material.dart';

class SlidingShape extends StatefulWidget {
  const SlidingShape({
    Key? key,
    required this.child,
    required this.tween,
  }) : super(key: key);
  final Widget child;
  final Tween<Offset> tween;

  @override
  State<SlidingShape> createState() => _SlidingShapeState();
}

class _SlidingShapeState extends State<SlidingShape>
    with SingleTickerProviderStateMixin {
  late final _slideController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 5),
  )..repeat(reverse: true);

  late final _slideCurve = CurvedAnimation(
    parent: _slideController,
    curve: Curves.easeInOut,
  );

  late final _slideAnimation = widget.tween.animate(_slideCurve);

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _slideAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: _slideAnimation.value,
          child: child,
        );
      },
      child: widget.child,
    );
  }
}

class RotatingShape extends StatefulWidget {
  const RotatingShape({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<RotatingShape> createState() => _RotatingShapeState();
}

class _RotatingShapeState extends State<RotatingShape>
    with SingleTickerProviderStateMixin {
  late final _rotationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 5),
  )..repeat();

  late final _rotationAnimation = CurvedAnimation(
    parent: _rotationController,
    curve: Curves.linear,
  );

  @override
  void dispose() {
    _rotationAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(turns: _rotationAnimation, child: widget.child);
  }
}
