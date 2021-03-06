import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextFormField extends StatelessWidget {
  final ValueChanged<String>? callback;
  final String? Function(String?)? validatorCallback;
  final String labelText;
  final Icon? icon;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.callback,
    this.icon,
    this.validatorCallback,
    this.obscureText: false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      child: TextFormField(
        obscureText: obscureText,
        onChanged: (value) => callback!(value),
        validator: (_) => validatorCallback!(_),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0.0),
          prefixIcon: icon,
          labelText: labelText,
        ),
        autocorrect: false,
      ),
    );
  }
}
