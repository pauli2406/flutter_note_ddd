import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:neverForget/domain/notes/i_note_repository.dart';
import 'package:neverForget/domain/notes/note.dart';
import 'package:neverForget/domain/notes/note_failure.dart';
import 'package:neverForget/domain/notes/value_transformers.dart';
import 'package:neverForget/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial());

  final INoteRepository _noteRepository;

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield e.initialNoteOption.fold(
        () => state,
        (initialNote) => state.copyWith(note: initialNote, isEditing: true),
      );
    }, bodyChanged: (e) async* {
      yield state.copyWith(
        note: state.note.copyWith(noteBody: e.bodyStr),
        saveFailureOrSuccessOption: none(),
      );
    }, colorChanged: (e) async* {
      yield state.copyWith(
        note: state.note.copyWith(noteColor: makeColorOpaque(e.color)),
        saveFailureOrSuccessOption: none(),
      );
    }, todosChanged: (e) async* {
      yield state.copyWith(
        note: state.note.copyWith(
          todos: e.todos.map((primitive) => primitive.toDomain()),
        ),
        saveFailureOrSuccessOption: none(),
      );
    }, saved: (e) async* {
      Either<NoteFailure, Unit> failureOrSuccess;

      // if (validateStringNotEmpty(state.note.noteBody).isRight() &&
      //     validateMaxStringLength(state.note.noteBody, Note.maxLength)
      //         .isRight()) {
      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );

      if (state.note.failureOption.isNone()) {
        failureOrSuccess = state.isEditing
            ? await _noteRepository.update(state.note)
            : await _noteRepository.create(state.note);
      }

      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
        // },
        );
  }
}
