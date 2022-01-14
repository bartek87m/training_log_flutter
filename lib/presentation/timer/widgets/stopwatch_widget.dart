import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/presentation/timer/widgets/clock_marker_widget.dart';
import 'package:training_log/presentation/timer/widgets/clock_text_marker_widget.dart';

class StopwatchWidget extends HookWidget {
  const StopwatchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final radius = constraints.maxWidth / 2;
        return Stack(
          children: [
            for (var i = 0; i < 60; i++)
              Positioned(
                left: radius * 1.01,
                top: radius,
                child: ClockMarkers(seconds: i, radius: radius),
              ),
            for (var i = 0; i < 60; i += 5)
              Positioned(
                left: radius * 1.01,
                top: radius,
                child: ClockTextMarkers(seconds: i, radius: radius),
              ),
          ],
        );
      },
    );
  }
}
