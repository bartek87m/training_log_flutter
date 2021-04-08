import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/presentation/training/widgets/activeTrainingWidget.dart';

class EditHistoricalWorkoutPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Wotkout'),
      ),
      body: ActiveTraining(),
    );
  }
}
