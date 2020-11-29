import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:neverForget/application/note/note_form/note_form_bloc.dart';
import 'package:neverForget/domain/core/value_validators.dart';
import 'package:neverForget/domain/notes/note.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyField extends HookWidget {
  const BodyField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.note.noteBody;
      },
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: textEditingController,
            decoration:
                const InputDecoration(labelText: 'Note', counterText: ""),
            maxLength: Note.maxLength,
            maxLines: null,
            minLines: 5,
            onChanged: (value) => context.read<NoteFormBloc>().add(
                  NoteFormEvent.bodyChanged(value),
                ),
            validator: (value) => context
                .read<NoteFormBloc>()
                .state
                .note
                .failureOption
                .getOrElse(() => null)
                .maybeMap(
                  empty: (f) => "Can't be empty",
                  exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                  orElse: () => null,
                ),
          )),
    );
  }
}
