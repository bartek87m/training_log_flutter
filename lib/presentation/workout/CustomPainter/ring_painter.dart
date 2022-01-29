import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RingPainter extends CustomPainter {
  final double progress;
  late Color color;

  RingPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    // final backgroundPaint = Paint()
    //   ..isAntiAlias = true
    //   ..strokeWidth = 3
    //   ..color = Colors.black
    //   ..style = PaintingStyle.stroke;
    // canvas.drawCircle(Offset(0, 0), 30.w, backgroundPaint);

    if (progress >= 0 && progress < 0.33)
      color = Colors.red;
    else if (progress >= 0.33 && progress <= 0.66)
      color = Colors.blue;
    else if (progress >= 0.66 && progress <= 1) color = Colors.green;

    final foregroundPaint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 10.w
      ..color = color
      ..style = PaintingStyle.stroke;
    canvas.drawArc(
      Rect.fromCircle(center: Offset(0, 0), radius: 30.w),
      -pi / 2,
      2 * pi * progress,
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(covariant RingPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
