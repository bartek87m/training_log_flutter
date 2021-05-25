import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:training_log/presentation/core/app_widget.dart';

import 'injection.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  configureDependencies();
  await Firebase.initializeApp();
  runApp(AppWidget());
}
