import 'package:dialoger/dialoger.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/model/note.dart';
import 'package:noteapp/util/context.dart';

class NoteAddButton extends StatelessWidget {
  const NoteAddButton({super.key});

  @override
  Widget build(BuildContext context) => FloatingActionButton(
      onPressed: () => dialogText(
            context: context,
            title: "New Note?",
            submitButtonText: "Create",
            onSubmit: (context, text) =>
                context.user.add<Note>(Note(title: text)),
          ),
      child: const Icon(Icons.add_rounded));
}
