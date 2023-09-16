import 'package:aob_env/app/app.dart';
import 'package:aob_env/bootstrap.dart';
import 'package:aob_env/firebase_options_stg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await bootstrap(() => const App());
}
