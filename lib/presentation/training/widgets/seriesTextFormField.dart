import 'package:flutter/material.dart';

class SereisTextFormField extends StatelessWidget {
  final textFieldHeight;
  final initValue;
  final Function onChange;
  // final _key = UniqueKey();

  SereisTextFormField({this.textFieldHeight, this.initValue, this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: Colors.grey,
        cursorHeight: textFieldHeight,
        decoration: InputDecoration(
          fillColor: Colors.grey[600],
          filled: true,
          // // contentPadding: const EdgeInsets.only(top: 5),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        style: const TextStyle(fontSize: 14),
        textInputAction: TextInputAction.next,
        initialValue: initValue,
        onChanged: (value) {
          onChange(value);
        },
        textAlign: TextAlign.center,
      
    );
  }
}
