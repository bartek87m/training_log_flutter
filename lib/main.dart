import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:training_log/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.prod);
  await Firebase.initializeApp();
  runApp(MyApp());
}
