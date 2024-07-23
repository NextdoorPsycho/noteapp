import 'dart:async';

import 'package:fast_log/fast_log.dart';
import 'package:fire_api/fire_api.dart';
import 'package:fire_api_flutter/fire_api_flutter.dart';
import 'package:fire_crud/fire_crud.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/model/user.dart' as m;
import 'package:noteapp/screen/home.dart';
import 'package:noteapp/util/context.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'firebase_options.dart';

void registerCrud() {
  FireCrud.instance().registerModel(FireModel<m.User>(
    model: m.User(),
    toMap: (user) => user.toMap(),
    fromMap: (map) => m.UserMapper.fromMap(map),
    collection: 'user',
  ));
}

void main() =>
    runZonedGuarded(() => setup().then((_) => runApp(const NotesApp())),
        (e, s) {
      error('Uncaught error: $e');
      error('Stack trace:\n$s');
    });

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestoreDatabase.create();
  registerCrud();
  UserCredential a = await FirebaseAuth.instance.signInAnonymously();
  info('User: ${a.user!.uid}');
  FirestoreDatabase.instance
    // If two things stream the same document, they are pooled so only 1 document stream happens
    ..streamPooling = true

    // If you set a document, it will push it to any active listeners
    // instead of waiting for firebase to push it over network
    ..streamLoopbackInjection = true
    ..debugLogging = true
    ..debugPooling = true;

  await $crud.ensureExists(userId, m.User());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) => ShadApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes',
        home: const Home(),
        darkTheme: ShadThemeData(
          brightness: Brightness.dark,
          colorScheme: const ShadSlateColorScheme.dark(),
        ),
      );
}
