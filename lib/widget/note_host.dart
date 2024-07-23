import 'package:flutter/material.dart';
import 'package:noteapp/widget/note_list.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class NoteHost extends StatelessWidget {
  const NoteHost({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    return ShadDecorator(
      decoration: ShadDecoration(
        border: ShadBorder(
          width: 1,
          color: theme.colorScheme.border,
          radius: theme.radius,
        ),
      ),
      child: ClipRRect(
        borderRadius: theme.radius,
        child: ShadResizablePanelGroup(
          height: 200,
          showHandle: true,
          children: [
            ShadResizablePanel(
              defaultSize: 200,
              minSize: 70,
              child: Center(
                child: Text('Sidebar', style: theme.textTheme.large),
              ),
            ),
            const ShadResizablePanel(
              defaultSize: 200,
              minSize: 80,
              child: NoteList(),
            ),
          ],
        ),
      ),
    );
  }
}
