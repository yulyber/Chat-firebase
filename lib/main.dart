import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'config/configuration.dart';
import 'ui/my_app.dart';

Future<void> main() async {
  // this is the key
  WidgetsFlutterBinding.ensureInitialized();
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  // aquí nos conectamos a los servicios de
  // firebase
  await Firebase.initializeApp(
    //Si es por la web comentar, si es por emulador descomentar la linea 19
      name: 'com.example.f_chat_template',

      options: const FirebaseOptions(
    apiKey: Configuration.apiKey,
    authDomain: Configuration.authDomain,
    databaseURL: Configuration.databaseURL,
    projectId: Configuration.projectId,
    // storageBucket: Configuration.storageBucket,
    messagingSenderId: Configuration.messagingSenderId,
    appId: Configuration.appId,
    // measurementId: Configuration.measurementId),
  ));
  runApp(const MyApp());
}
