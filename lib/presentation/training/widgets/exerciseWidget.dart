import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/presentation/training/widgets/setWidges.dart';

class ExerciseWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: Column(
          children: [
            TextFormField(
              style: TextStyle(fontSize: 14),
              minLines: 1,
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'Exercise Name',
                contentPadding: EdgeInsets.only(bottom: 5),
                isDense: true,
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SetWidget(),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              onPressed: () {},
              child: Text("Add Set"),
              // padding: EdgeInsets.all(0),
            )
          ],
        ),
      ),
    );
  }
}
