import 'package:flip_counter/animating_shapes.dart';
import 'package:flutter/material.dart';

class BgScaffold extends StatelessWidget {
  const BgScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purpleAccent, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          const AnimatedTriangle(),
          const AnimatedCircle(),
          const AnimatedSemiArc(),
          const AnimatedSwiggle(),
        ],
      ),
    );
  }
}
