import 'dart:math';

import 'package:flutter/material.dart';

class Circle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.purple;

    canvas.drawCircle(Offset.zero, 150, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SemiArc extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint arcPaint = Paint()
      ..color = Colors.blue.shade500
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;
    Rect rect = Rect.fromCircle(center: Offset.zero, radius: 100);
    canvas.drawArc(rect, 0, -pi, false, arcPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class Triangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double h = 150;

    Offset p1 = Offset(0, h);
    Offset p2 = Offset(h / 2, 0);
    Offset p3 = Offset(-h / 2, 0);

    Paint triPaint = Paint()..color = const Color.fromARGB(255, 99, 80, 239);
    Path path = Path();
    path.addPolygon([p1, p2, p3], true);
    path.close();
    canvas.drawPath(path, triPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SwigglyLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final thirdWidth = w / 3;
    final sixthWidth = w / 6;
    final h = size.height;
    final thirdHeight = h / 3;
    Paint paint = Paint()
      ..color = Colors.blueAccent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;

    Path path = Path();

    path.moveTo(0, h * 0.4);
    path.quadraticBezierTo(
      sixthWidth, // x1
      2 * thirdHeight, // y1
      thirdWidth,
      h * 0.5,
    );
    path.quadraticBezierTo(
      thirdWidth + sixthWidth, // x1
      thirdHeight * 1.05, // y1
      2 * thirdWidth,
      h * 0.5,
    );
    path.quadraticBezierTo(
      w * 0.85, // x1
      2 * thirdHeight, //y1
      w,
      h * 0.4,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
