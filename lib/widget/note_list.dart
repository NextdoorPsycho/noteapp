import 'package:fire_crud_flutter/fire_crud_flutter.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/model/note.dart';
import 'package:noteapp/util/context.dart';
import 'package:noteapp/widget/note_tile.dart';

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) => context.user.pylonList<Note>(
      context: context, builder: (context) => const NoteTile());
}
