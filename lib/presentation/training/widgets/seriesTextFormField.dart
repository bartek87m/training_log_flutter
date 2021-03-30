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
      // key: _key,

      maxLength: 8,
      cursorColor: Colors.grey,
      // he: textFieldHeight * 0.7,
      decoration: InputDecoration(
        counter: Offstage(
          offstage: true,
        ),
        fillColor: Colors.grey[600],
        filled: true,
        // contentPadding: const EdgeInsets.only(top: 3),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
      // style: const TextStyle(fontSize: 14),
      textInputAction: TextInputAction.next,
      initialValue: initValue,
      onChanged: (value) {
        onChange(value);
      },
      textAlign: TextAlign.center,
    );
  }
}
