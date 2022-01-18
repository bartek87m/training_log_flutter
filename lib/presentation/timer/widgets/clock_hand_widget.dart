import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClockHandWidget extends StatelessWidget {
  final double radius;
  final rotationAngle;
  const ClockHandWidget({Key? key, required this.radius, this.rotationAngle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = 1.w;
    final height = radius * 0.75;
    return Transform(
      alignment: Alignment.topCenter,
      // transform: Matrix4.identity(),
      transform: Matrix4.identity()
        ..translate(-2.0, 0, 0.0)
        ..rotateZ(rotationAngle),

      child: Container(
        width: width,
        height: height,
        color: Colors.red,
      ),
    );
  }
}
