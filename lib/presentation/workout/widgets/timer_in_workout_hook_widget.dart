import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';

class TimerInWorkoutHookWidget extends HookWidget {
  TimerInWorkoutHookWidget({required bool isWidgetVisible, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useAnimationController(duration: Duration(seconds: 2));
    final _width = useState(0.0);
    final _height = useState(0.0);

    useEffect(() {
      // _height = 40.h;
      // _width = 95.w;

      return () {
        _height.value = 0;
        _width.value = 0;
      };
    });

    void showElement() {
      _height.value = 40.h;
      _width.value = 95.w;
      // setState(() {
      //   if (isAnimationDone) {
      //     _height = 40.h;
      //     _width = 95.w;
      //   } else {
      //     _animationControllerTimer.reset();
      //     _pretimeStatus = AnimationPretimeStatus.Not_Started;
      //     _height = 0;
      //     _width = 0;
      //   }
      // });
    }

    return Column(
      children: [
        AnimatedContainer(
          height: _height.value,
          width: _width.value,
          duration: Duration(seconds: 3),
          curve: Curves.fastOutSlowIn,
          child: Builder(builder: (context) {
            return AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                return Container(
                  color: Colors.amber,
                );
              },
            );
          }),
        ),
        TextButton(
          onPressed: showElement,
          child: Text('press'),
        ),
      ],
    );
  }
}
