import 'package:firebase_auth/firebase_auth.dart' as f;
import 'package:flutter/material.dart';
import 'package:noteapp/model/note.dart';
import 'package:noteapp/model/user.dart';
import 'package:pylon/pylon.dart';

String get userId => f.FirebaseAuth.instance.currentUser!.uid;

extension XContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  User get user => pylon<User>();

  Note get note => pylon<Note>();
}
