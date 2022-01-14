import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/presentation/timer/widgets/stopwatch_widget.dart';

class TimersPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timers"),
      ),
      body: Container(
        child: StopwatchWidget(),
      ),
    );
  }
}
