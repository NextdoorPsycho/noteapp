import 'package:flutter/material.dart';
import 'package:noteapp/screen/note_screen.dart';
import 'package:noteapp/util/context.dart';
import 'package:pylon/pylon.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({super.key});

  @override
  Widget build(BuildContext context) => ListTile(
      title: Text(context.note.title),
      onTap: () => Pylon.push(context, const NoteScreen()));
}
