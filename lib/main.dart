import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:training_log/presentation/core/app_widget.dart';

import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //You only need to call this method if you need the binding to be initialized before calling runApp.
  configureDependencies();
  await Firebase.initializeApp();
  runApp(AppWidget());
}
