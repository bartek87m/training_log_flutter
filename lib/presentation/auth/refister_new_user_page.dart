import 'package:flutter/material.dart';
import 'package:training_log/presentation/auth/widgets/register_new_user_form.dart';
import 'package:sizer/sizer.dart';

class RegisterNewUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        height: 35.h,
        margin: EdgeInsets.only(top: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.w),
        child: RegisterNewUserForm(),
      ),
    );
  }
}
