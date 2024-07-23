import 'package:dialoger/dialoger.dart';
import 'package:fire_crud_flutter/fire_crud_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:noteapp/model/note.dart';
import 'package:noteapp/util/context.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) => context.note.pylonStreamSelf<Note>(
        context,
        (context) => Scaffold(
          backgroundColor: HexColor(context.note.color),
          appBar: AppBar(
            title: Text(context.note.title),
          ),
          body: ListView(
            children: [
              //rename button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: const Text("Rename"),
                  onPressed: () => dialogText(
                      context: context,
                      title: "Rename",
                      submitButtonText: "Rename",
                      onSubmit: (context, renamedTo) => context.note
                          .setSelf<Note>(
                              context.note.copyWith(title: renamedTo))),
                ),
              ),
              //recolor
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: const Text("Recolor"),
                  onPressed: () => dialogText(
                      context: context,
                      title: "Recolor",
                      submitButtonText: "Recolor",
                      onSubmit: (context, recoloredTo) => context.note
                          .setSelf<Note>(
                              context.note.copyWith(color: recoloredTo))),
                ),
              ),
            ],
          ),
        ),
      );
}
